#!/usr/bin/env python3
"""Validate ox_inventory item names, fields, and image consistency."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEMS_FILE = ROOT / "ox_inventory" / "items.lua"
IMAGES_DIR = ROOT / "images"

NAME_PATTERN = re.compile(r"^[a-z0-9]+(?:_[a-z0-9]+)*$")
ITEM_BLOCK_PATTERN = re.compile(r"\['([A-Za-z0-9_]+)'\]\s*=\s*\{(.*?)\}\s*,?", re.DOTALL)
FIELD_PATTERN = re.compile(r"\b(label|weight|stack|close|description|image)\s*=")
IMAGE_REF_PATTERN = re.compile(r"\bimage\s*=\s*'([^']+)'")
REQUIRED_FIELDS = {"label", "weight", "stack", "close", "description", "image"}


def is_valid_snake_case(value: str) -> bool:
    return bool(NAME_PATTERN.fullmatch(value))


def parse_item_blocks(text: str) -> list[tuple[str, str]]:
    return ITEM_BLOCK_PATTERN.findall(text)


def main() -> int:
    errors: list[str] = []
    notes: list[str] = []

    print("=== w2f-Inventory-items Validator ===")

    image_png_names: set[str] = set()
    if IMAGES_DIR.exists():
        image_files = [p for p in IMAGES_DIR.iterdir() if p.is_file() and p.name != ".gitkeep"]
        for image_path in sorted(image_files):
            filename = image_path.name
            stem = image_path.stem
            suffix = image_path.suffix

            if suffix != ".png":
                errors.append(f"images/{filename}: must use .png extension")
            if not is_valid_snake_case(stem):
                errors.append(f"images/{filename}: filename must be lowercase snake_case")
            if suffix == ".png" and is_valid_snake_case(stem):
                image_png_names.add(filename)
    else:
        notes.append("images/ directory not found (image filename checks skipped)")

    if ITEMS_FILE.exists():
        text = ITEMS_FILE.read_text(encoding="utf-8")
        item_blocks = parse_item_blocks(text)
        item_names = [name for name, _ in item_blocks]

        duplicates = sorted({name for name in item_names if item_names.count(name) > 1})
        for name in duplicates:
            errors.append(f"Duplicate item key: {name}")

        for item_name, body in item_blocks:
            if not is_valid_snake_case(item_name):
                errors.append(f"Invalid item key '{item_name}': must be lowercase snake_case")

            found_fields = set(FIELD_PATTERN.findall(body))
            missing_fields = sorted(REQUIRED_FIELDS - found_fields)
            for field in missing_fields:
                errors.append(f"{item_name}: missing required field '{field}'")

            image_match = IMAGE_REF_PATTERN.search(body)
            if image_match:
                image_name = image_match.group(1)
                expected_image = f"{item_name}.png"
                if image_name != expected_image:
                    errors.append(f"{item_name}: image is '{image_name}' but expected '{expected_image}'")

                image_stem = Path(image_name).stem
                image_suffix = Path(image_name).suffix
                if image_suffix != ".png":
                    errors.append(f"{item_name}: image '{image_name}' must use .png extension")
                if not is_valid_snake_case(image_stem):
                    errors.append(f"{item_name}: image '{image_name}' must be lowercase snake_case")

                if image_png_names and image_name not in image_png_names:
                    notes.append(f"{item_name}: '{image_name}' not found in images/")
    else:
        notes.append("ox_inventory/items.lua not found (item checks skipped)")

    if errors:
        print("\n[FAIL] Issues found:")
        for issue in errors:
            print(f" - {issue}")
    else:
        print("\n[PASS] No validation errors found.")

    if notes:
        print("\n[INFO] Notes:")
        for note in notes:
            print(f" - {note}")

    print(f"\nSummary: {len(errors)} error(s), {len(notes)} note(s)")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
