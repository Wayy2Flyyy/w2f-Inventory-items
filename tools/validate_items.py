#!/usr/bin/env python3
"""Validate ox_inventory item definitions against basic repository rules."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEMS_FILE = ROOT / "ox_inventory" / "items.lua"
IMAGES_DIR = ROOT / "images"
NAME_PATTERN = re.compile(r"^[a-z0-9]+(?:_[a-z0-9]+)*$")
ITEM_KEY_PATTERN = re.compile(r"\['([a-zA-Z0-9_]+)'\]\s*=\s*\{")
IMAGE_PATTERN = re.compile(r"image\s*=\s*'([^']+)'")


def parse_items(lines: list[str]) -> tuple[list[str], dict[str, str]]:
    names: list[str] = []
    images: dict[str, str] = {}
    current_item: str | None = None

    for line in lines:
        key_match = ITEM_KEY_PATTERN.search(line)
        if key_match:
            current_item = key_match.group(1)
            names.append(current_item)
            continue

        if current_item:
            image_match = IMAGE_PATTERN.search(line)
            if image_match:
                images[current_item] = image_match.group(1)

    return names, images


def main() -> int:
    if not ITEMS_FILE.exists():
        print(f"[ERROR] Missing items file: {ITEMS_FILE}")
        return 1

    lines = ITEMS_FILE.read_text(encoding="utf-8").splitlines()
    item_names, item_images = parse_items(lines)

    duplicates = sorted({name for name in item_names if item_names.count(name) > 1})
    invalid_names = sorted([name for name in item_names if not NAME_PATTERN.match(name)])

    available_images = {path.name for path in IMAGES_DIR.glob("*.png")} if IMAGES_DIR.exists() else set()
    mismatched_images: list[str] = []
    missing_images: list[str] = []

    for item_name, image_name in sorted(item_images.items()):
        expected_image = f"{item_name}.png"
        if image_name != expected_image:
            mismatched_images.append(
                f"{item_name}: configured '{image_name}', expected '{expected_image}'"
            )
        if available_images and image_name not in available_images:
            missing_images.append(f"{item_name}: '{image_name}' not found in images/")

    print("=== w2f-Inventory-items Validation Report ===")
    print(f"Items parsed: {len(item_names)}")

    if duplicates:
        print("\n[FAIL] Duplicate item names:")
        for name in duplicates:
            print(f"  - {name}")
    else:
        print("[OK] No duplicate item names.")

    if invalid_names:
        print("\n[FAIL] Invalid item names (must be lowercase snake_case):")
        for name in invalid_names:
            print(f"  - {name}")
    else:
        print("[OK] All item names are lowercase snake_case.")

    if mismatched_images:
        print("\n[WARN] Image filename mismatches:")
        for msg in mismatched_images:
            print(f"  - {msg}")
    else:
        print("[OK] All configured image names match item names.")

    if available_images:
        if missing_images:
            print("\n[WARN] Configured images missing from images/:")
            for msg in missing_images:
                print(f"  - {msg}")
        else:
            print("[OK] All configured images exist in images/.")
    else:
        print("[INFO] No PNG files found in images/; skipping existence checks.")

    has_failure = bool(duplicates or invalid_names)
    print("\nResult:", "FAIL" if has_failure else "PASS")
    return 1 if has_failure else 0


if __name__ == "__main__":
    raise SystemExit(main())
