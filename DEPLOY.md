# Deployment Status

**Live site:** https://bkk.lol

**Deployed:** October 6, 2025
**Commit:** b7253bf
**Method:** Cloudflare Pages (builds from source)

---

## Architecture

```
golf-vault/           → Source content (Obsidian vault)
golf-vault-site/      → Quartz project
  content/            → Synced copy of vault (tracked in git)
  public/             → Built by Cloudflare (not in git)

GitHub repo:
  adimov-eth.github.io.git
    content/          → Markdown source
    quartz.config.ts  → Quartz configuration
    .pages.yml        → Cloudflare build config

Cloudflare Pages:
  Pulls from GitHub on push
  Runs: npm install && npx quartz build
  Serves from: public/
  Domain: bkk.lol
```

---

## Update Workflow

### 1. Edit content
```bash
# Option A: Edit vault directly in Obsidian
cd /Users/adimov/AGI/docs/golf-vault/
# Make changes, save

# Option B: Edit site content directly
cd /Users/adimov/AGI/docs/golf-vault-site/content/
# Edit markdown files
```

### 2. Deploy (automated)
```bash
cd /Users/adimov/AGI/docs/golf-vault-site/
./deploy.sh
```

**That's it.** Script will:
1. Sync vault → content/
2. Git commit changes
3. Push to GitHub
4. Cloudflare builds automatically (~2-3 min)

No local build needed. Cloudflare handles it.

---

## Deploy Script

Already exists: `deploy.sh`

```bash
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
```

Run with:
```bash
./deploy.sh
```

---

## DNS Configuration

**Domain:** bkk.lol
**Hosting:** Cloudflare Pages (not GitHub Pages)

**Cloudflare Pages Settings:**
- Project: adimov-eth.github.io
- Build command: (none - pre-built static files)
- Build output directory: `.` (root)
- Functions: Disabled

**Configuration file:** `.pages.yml` in repo root
```yaml
build:
  command: echo "No build needed - static files pre-built"
  output: .
functions:
  enabled: false
```

**DNS:** Managed by Cloudflare
- CNAME: bkk.lol → adimov-eth.github.io.pages.dev
- Or custom domain setup in Cloudflare Pages dashboard

---

## Monitoring

**Build time:** ~2-3 seconds (11 pages)
**Deploy time:** ~30-60 seconds (GitHub Pages processing)

**After push:**
1. GitHub Actions runs (check repo Actions tab)
2. Site builds and deploys automatically
3. Changes live at https://bkk.lol in 1-2 minutes

**Check deployment:**
- Visit https://bkk.lol
- Check console for errors
- Test wikilinks
- Try search
- View graph

---

## Rollback

If deployment breaks:

```bash
cd /tmp/adimov-eth.github.io
git revert HEAD
git push origin main
```

Or restore to specific commit:
```bash
git reset --hard <commit-hash>
git push origin main --force
```

---

## Development Server

**Local preview:**
```bash
cd /Users/adimov/AGI/docs/golf-vault-site/
npx quartz build --serve
# Opens http://localhost:8080
```

**Always test locally before deploying!**

---

## Current Status

**Pages deployed:** 11
- README (index)
- 4 strategy docs
- 3 concept docs
- 1 operations doc
- 1 research doc
- Index pages (auto-generated)

**Features enabled:**
- ✓ Wikilinks
- ✓ Graph view
- ✓ Search
- ✓ Backlinks
- ✓ Table of contents
- ✓ Dark mode
- ✓ OG images

**Domain:** bkk.lol ✓
**HTTPS:** Enabled ✓
**Sitemap:** https://bkk.lol/sitemap.xml ✓
**RSS:** https://bkk.lol/index.xml ✓

---

## Next Steps

1. **Test the live site:** https://bkk.lol
2. **Create deploy.sh script** (see above)
3. **Document update workflow** for team
4. **Set up CI/CD** (optional: auto-deploy on vault changes)

---

## Troubleshooting

### Site not updating after push
- Check GitHub Actions (repo → Actions tab)
- Wait 2-3 minutes for GitHub Pages processing
- Clear browser cache (Cmd+Shift+R)
- Check CNAME file still exists in repo

### Links broken
- Wikilinks case-sensitive: `[[Unit_Economics]]` not `[[unit_economics]]`
- Rebuild: `npx quartz build`
- Check file exists in content/

### Build fails
- Check Node.js version (16+)
- Clear cache: `rm -rf .quartz-cache/`
- Reinstall: `rm -rf node_modules && npm install`

### Domain not resolving
- Check DNS propagation: https://dnschecker.org
- Verify CNAME file: `cat CNAME` → should be "bkk.lol"
- Check GitHub Pages settings in repo

---

## Resources

- **Live site:** https://bkk.lol
- **GitHub repo:** https://github.com/adimov-eth/adimov-eth.github.io
- **Quartz docs:** https://quartz.jzhao.xyz
- **GitHub Pages docs:** https://docs.github.com/en/pages
