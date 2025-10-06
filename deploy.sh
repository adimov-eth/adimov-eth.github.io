#!/bin/bash

set -e

echo "📋 Syncing vault to content..."
rsync -av --delete ../golf-vault/ content/

echo "💾 Committing changes..."
git add content/
git commit -m "Update content: $(date '+%Y-%m-%d %H:%M')" || echo "No changes to commit"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Deployed! Cloudflare will build in ~2-3 minutes."
echo ""
echo "Check status:"
echo "  - Live site: https://bkk.lol"
echo "  - Cloudflare Pages: https://dash.cloudflare.com/pages"
echo "  - GitHub repo: https://github.com/adimov-eth/adimov-eth.github.io"
