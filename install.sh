#!/bin/bash

# This script installs the global cloud configuration.

# Exit on error
set -e

# Define source and destination directories
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/claude"
DEST_DIR="$HOME/.claude"

# Items to be copied
ITEMS=("commands" "docs" "agents" "scripts")

# Check if destination directory exists and prompt for backup
if [ -d "$DEST_DIR" ]; then
    echo "Existing claude configuration found at $DEST_DIR."
    read -p "Do you want to back it up before proceeding? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        BACKUP_DIR="$HOME/.claude.backup.$(date +%Y%m%d_%H%M%S)"
        echo "Backing up $DEST_DIR to $BACKUP_DIR..."
        mv "$DEST_DIR" "$BACKUP_DIR"
        echo "Backup complete."
    fi
fi

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy directories
for item in "${ITEMS[@]}"; do
    SOURCE_ITEM="$SOURCE_DIR/$item"
    DEST_ITEM="$DEST_DIR/$item"
    if [ -e "$SOURCE_ITEM" ]; then
        echo "Installing $item to $DEST_ITEM..."
        # Remove existing destination item before copying
        rm -rf "$DEST_ITEM"
        cp -r "$SOURCE_ITEM" "$DEST_ITEM"
    else
        echo "Warning: Source item $SOURCE_ITEM does not exist. Skipping."
    fi
done

# Copy global settings
SOURCE_SETTINGS="$SOURCE_DIR/global_settings.json"
DEST_SETTINGS="$DEST_DIR/settings.json"
if [ -f "$SOURCE_SETTINGS" ]; then
    echo "Installing global settings to $DEST_SETTINGS..."
    cp "$SOURCE_SETTINGS" "$DEST_SETTINGS"
else
    echo "Warning: Global settings file not found at $SOURCE_SETTINGS. Skipping."
fi

echo "Installation complete."
