# Installation Guide

This guide explains how to install and use `w2f-Inventory-items` with a FiveM server using `ox_inventory`.

## 1) Download the repository

Choose one method:

- **Git:** `git clone <repo-url>`
- **GitHub Download ZIP:** Download, then extract the folder

## 2) Place inventory images

1. Open the `images/` folder in this repository.
2. Copy the `.png` item icons.
3. Paste them into your server's ox_inventory image directory.

Most servers use an ox_inventory web image path. If your server uses a custom location, use that configured path instead.

## 3) Copy item definitions

1. Open `ox_inventory/items.lua` from this repository.
2. Copy the item entries you want.
3. Paste them into your server's active ox_inventory items file.

## 4) Restart your server resources

After copying definitions and images:

- Restart `ox_inventory`, or
- Restart the server if that is your normal deployment process

Then check the inventory UI in-game.

## 5) Common install mistakes

- Image filename does not match the item `image` field
- Wrong file extension (`.jpg` instead of `.png`)
- Item key changed to uppercase or spaces
- Items pasted into the wrong server file
- Server restarted before saving edited files

## 6) Basic troubleshooting

- **Item shows no icon:** Check filename and path (`raw_meat.png` must match exactly).
- **Item does not exist in inventory:** Confirm the item key exists in your loaded items file.
- **Script error after edit:** Re-check Lua commas, braces, and quote usage.
- **Changes not visible:** Restart resource/server and clear any cached web assets if used.
