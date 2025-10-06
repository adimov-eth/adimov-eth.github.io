# GolfOkay Knowledge Vault - Quartz Site

**Live site running at:** http://localhost:8080

---

## What This Is

Quartz-powered static site generator for the GolfOkay knowledge vault. Converts Obsidian markdown with wikilinks into a beautiful, searchable documentation site.

**Features:**
- ✓ Wikilinks work automatically (`[[like_this]]`)
- ✓ Graph view (shows connections between pages)
- ✓ Backlinks (shows what links to current page)
- ✓ Client-side search
- ✓ Dark mode
- ✓ Table of contents
- ✓ Folder structure preserved

---

## Directory Structure

```
golf-vault-site/
  content/          # Your vault content (copied from ../golf-vault/)
  public/           # Built site (generated, don't edit)
  quartz/           # Quartz framework (don't edit)
  quartz.config.ts  # Configuration (colors, title, etc.)
```

---

## Development

### Start dev server
```bash
npx quartz build --serve
# Opens http://localhost:8080
# Auto-rebuilds on file changes
```

### Update content
```bash
# Option 1: Edit files in content/ directly
# Option 2: Edit in ../golf-vault/ and sync
cp -r ../golf-vault/* content/
```

### Build for production
```bash
npx quartz build
# Outputs to public/
```

---

## Deployment

### Vercel (Recommended)
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel --prod
# Follow prompts, point to /docs/golf-vault-site
```

**Build settings:**
- Build Command: `npx quartz build`
- Output Directory: `public`
- Install Command: `npm install`

### GitHub Pages
```bash
# Build
npx quartz build

# Push public/ to gh-pages branch
git subtree push --prefix public origin gh-pages
```

### Netlify
- Connect GitHub repo
- Build command: `npx quartz build`
- Publish directory: `public`

---

## Configuration

Edit `quartz.config.ts`:

### Change title
```typescript
pageTitle: "Your Title Here",
```

### Change colors
```typescript
colors: {
  lightMode: {
    secondary: "#1a4d2e", // Forest green (currently)
    tertiary: "#2e7d32",  // Highlight green
    // ...
  }
}
```

### Change base URL (for deployment)
```typescript
baseUrl: "your-domain.com",
```

### Ignore patterns
```typescript
ignorePatterns: ["private", "templates", ".obsidian", "drafts"],
```

---

## Customization

### Fonts
```typescript
typography: {
  header: "Schibsted Grotesk",
  body: "Source Sans Pro",
  code: "IBM Plex Mono",
}
```

### Enable/Disable Features

**Plugins in `quartz.config.ts`:**
- `Plugin.TableOfContents()` - TOC sidebar
- `Plugin.ObsidianFlavoredMarkdown()` - Wikilinks support
- `Plugin.CrawlLinks()` - Link resolution
- `Plugin.ContentIndex()` - Search index
- See [Quartz Plugins](https://quartz.jzhao.xyz/plugins) for full list

---

## Troubleshooting

### Links not working
- Check wikilink format: `[[page_name]]` not `[[page_name.md]]`
- Ensure target file exists in content/
- Run `npx quartz build` to regenerate

### Content not updating
- Restart dev server (Ctrl+C then `npx quartz build --serve`)
- Clear browser cache
- Check console for build errors

### Git warnings
- Files not tracked by git show date warnings (harmless)
- To fix: `git add content/` then rebuild

### Style issues
- Check `quartz/styles/` for custom CSS
- Modify `quartz.config.ts` colors
- Quartz uses CSS variables for theming

---

## Adding New Content

### New concept page
```bash
# Create in vault
echo "# New Concept\n\nContent here..." > content/concepts/new_concept.md

# Auto-rebuilds if dev server running
```

### Link to it from other pages
```markdown
See [[new_concept]] for details.
```

Quartz automatically:
- Creates the link
- Adds to search index
- Shows in graph view
- Creates backlink on new_concept page

---

## Graph View

**Access:** Click "Graph View" in sidebar

**Shows:**
- All pages as nodes
- Wikilinks as edges
- Hover to highlight connections
- Click node to navigate

**Customize graph:**
Edit `quartz/components/Graph.tsx` for:
- Node colors
- Edge thickness
- Clustering algorithm
- Filter rules

---

## Performance

**Build time:** ~2-3 seconds for 11 pages

**Optimizations if site grows:**
- Disable `Plugin.CustomOgImages()` (commented in config)
- Enable CDN caching: `cdnCaching: true`
- Use static hosting (Vercel/Netlify)
- Consider pagination for large folders

---

## Sync Strategy

### Option 1: Edit in Quartz (Simple)
- Edit `content/` directly
- Git tracks changes
- Single source of truth

### Option 2: Edit in Obsidian (Recommended)
- Keep vault in `../golf-vault/`
- Open in Obsidian for full features
- Sync to Quartz:
```bash
./sync-vault.sh  # Create this script
```

**sync-vault.sh:**
```bash
#!/bin/bash
rsync -av --delete ../golf-vault/ content/
npx quartz build
```

### Option 3: Symlink (Advanced)
```bash
rm -rf content
ln -s ../golf-vault content
# Now edits in vault appear immediately in Quartz
```

---

## Next Steps

1. **Test the site:** http://localhost:8080
   - Click through pages
   - Test wikilinks
   - Try search
   - Check graph view

2. **Customize:**
   - Update colors in `quartz.config.ts`
   - Add logo/favicon
   - Adjust typography

3. **Deploy:**
   - Choose hosting (Vercel recommended)
   - Update `baseUrl` in config
   - Run build & deploy

4. **Maintain:**
   - Add content to `content/`
   - Rebuild automatically (dev server)
   - Deploy on changes

---

## Resources

- [Quartz Docs](https://quartz.jzhao.xyz/)
- [Configuration Guide](https://quartz.jzhao.xyz/configuration)
- [Plugin List](https://quartz.jzhao.xyz/plugins)
- [Deployment Guide](https://quartz.jzhao.xyz/hosting)

---

## Current Status

**Site running:** http://localhost:8080
**Content source:** `/Users/adimov/AGI/docs/golf-vault/`
**Pages:** 11 (strategy, concepts, operations, research)
**Theme:** Forest green (matching golf-investor HTML)
**Features:** Wikilinks, graph view, search, TOC all working
