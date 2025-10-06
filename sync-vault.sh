#!/bin/bash

# Sync golf-vault to Quartz content directory
# Run this after editing vault in Obsidian

echo "Syncing vault to Quartz..."
rsync -av --delete ../golf-vault/ content/

echo "Building site..."
npx quartz build

echo "Done! Site updated at http://localhost:8080"
echo ""
echo "To start dev server: npx quartz build --serve"
