# Render Deployment Guide

## 🚀 Quick Setup

### 1. Push to GitHub First

Make sure your code is pushed to:
**https://github.com/SerSavage/gvlegacy-interactive-map.git**

### 2. Deploy to Render

1. Go to [Render Dashboard](https://dashboard.render.com)
2. Click **"New +"** → **"Static Site"**
3. Connect your GitHub account (if not already connected)
4. Select repository: **`gvlegacy-interactive-map`**
5. Configure:
   - **Name**: `gv-interactive-map` (or your choice)
   - **Branch**: `main`
   - **Build Command**: (leave empty)
   - **Publish Directory**: `.` (root directory)
6. Click **"Create Static Site"**
7. Wait for deployment (~2 minutes)

### 3. Your Map is Live!

Once deployed, your map will be available at:
**`https://gv-interactive-map.onrender.com`** (or your custom name)

## ✅ Advantages of Render

- ✅ Works in all browsers (no CORS issues)
- ✅ Fast CDN delivery
- ✅ Automatic HTTPS
- ✅ Free tier available
- ✅ Auto-deploys on git push

## 📝 Notes

- The `render.yaml` file is optional but helps with configuration
- The `static.json` file helps with routing
- All tiles are included, so it works completely offline
- Render free tier: Always on for static sites!

## 🔄 Updates

After pushing changes to GitHub, Render will automatically redeploy your site.

