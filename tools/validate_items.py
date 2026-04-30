#!/usr/bin/env python3
"""Validate ox_inventory item names and image filename consistency."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEMS_FILE = ROOT / "ox_inventory" / "items.lua"
IMAGES_DIR = ROOT / "images"

NAME_PATTERN = re.compile(r"^[a-z0-9]+(?:_[a-z0-9]+)*$")
ITEM_KEY_PATTERN = re.compile(r"\['([A-Za-z0-9_]+)'\]\s*=\s*\{")
IMAGE_REF_PATTERN = re.compile(r"image\s*=\s*'([^']+)'")


def parse_items_lua(text: str) -> tuple[list[str], dict[str, str]]:
    item_names: list[str] = []
    item_images: dict[str, str] = {}
    current_item: str | None = None

    for line in text.splitlines():
        key_match = ITEM_KEY_PATTERN.search(line)
        if key_match:
            current_item = key_match.group(1)
            item_names.append(current_item)
            continue

        if current_item:
            image_match = IMAGE_REF_PATTERN.search(line)
            if image_match:
                item_images[current_item] = image_match.group(1)

    return item_names, item_images


def is_valid_snake_case(value: str) -> bool:
    return bool(NAME_PATTERN.fullmatch(value))


def main() -> int:
    errors: list[str] = []
    warnings: list[str] = []

    print("=== w2f-Inventory-items Validator ===")

    # Validate images folder filenames
    image_png_names: set[str] = set()
    if IMAGES_DIR.exists():
        image_files = [p for p in IMAGES_DIR.iterdir() if p.is_file() and p.name != '.gitkeep']
        for image_path in sorted(image_files):
            filename = image_path.name
            stem = image_path.stem
            suffix = image_path.suffix

            if suffix != ".png":
                errors.append(f"images/{filename}: must use .png extension")

            if not is_valid_snake_case(stem):
                errors.append(f"images/{filename}: name must be lowercase snake_case")

            if suffix == ".png" and is_valid_snake_case(stem):
                image_png_names.add(filename)
    else:
        warnings.append("images/ directory not found (image filename checks skipped)")

    # Validate ox_inventory items
    if ITEMS_FILE.exists():
        item_names, item_images = parse_items_lua(ITEMS_FILE.read_text(encoding="utf-8"))

        duplicates = sorted({name for name in item_names if item_names.count(name) > 1})
        if duplicates:
            for name in duplicates:
                errors.append(f"Duplicate item key: {name}")

        for name in item_names:
            if not is_valid_snake_case(name):
                errors.append(f"Invalid item key '{name}': must be lowercase snake_case")

        for item_name, image_name in sorted(item_images.items()):
            expected_image = f"{item_name}.png"
            if image_name != expected_image:
                errors.append(
                    f"{item_name}: image is '{image_name}' but expected '{expected_image}'"
                )

            image_stem = Path(image_name).stem
            image_suffix = Path(image_name).suffix

            if image_suffix != ".png":
                errors.append(f"{item_name}: image '{image_name}' must use .png extension")

            if not is_valid_snake_case(image_stem):
                errors.append(
                    f"{item_name}: image '{image_name}' must use lowercase snake_case filename"
                )

            if image_png_names and image_name not in image_png_names:
                warnings.append(f"{item_name}: '{image_name}' not found in images/")
    else:
        warnings.append("ox_inventory/items.lua not found (item checks skipped)")

    if errors:
        print("\n[FAIL] Issues found:")
        for issue in errors:
            print(f" - {issue}")
    else:
        print("\n[PASS] No validation errors found.")

    if warnings:
        print("\n[INFO] Notes:")
        for note in warnings:
            print(f" - {note}")

    print(f"\nSummary: {len(errors)} error(s), {len(warnings)} note(s)")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
