# Gloria Victis Interactive Map

Interactive map for Gloria Victis game, featuring the main world, guild castles, and arena/tournament areas.

## 🗺️ Features

- Full interactive map with zoom and pan
- Combines Main map, Guild Castle (GC1), and Arena/Tournament areas
- Works completely offline (all tiles included)
- Responsive design
- Works in all modern browsers

## 🚀 Usage

Visit the [Render site](https://gv-interactive-map.onrender.com/) or open `index.html` locally.

## 🚀 Deploy to Render

1. Push this repository to GitHub
2. Go to [Render Dashboard](https://dashboard.render.com)
3. Click "New +" → "Static Site"
4. Connect your GitHub repository
5. Set:
   - **Name**: `gv-interactive-map` (or your choice)
   - **Build Command**: (leave empty)
   - **Publish Directory**: `.` (root)
6. Click "Create Static Site"
7. Wait for deployment (takes ~2 minutes)
8. Your map will be live at: `https://your-app-name.onrender.com`

## 📁 Map Structure

- **Main Map**: Base world map (x0-x20, y0-y17)
- **Guild Castle (GC1)**: Overlay for guild castle areas
- **Arena/Tournament**: Overlay for arena and tournament areas

Tiles are positioned according to their XY coordinates and composited together.

## 🛠️ Technical Details

- Built with [Leaflet.js](https://leafletjs.com/)
- Uses CRS.Simple coordinate system
- Tile size: 256x256 pixels
- Map dimensions: 21x18 tiles (5376x4608 pixels)
- All tiles stored locally in `GVmaptiles/` folder

## 📦 Files

- `index.html` - Main map page
- `GVmaptiles/` - Map tile images (PNG files)
- `README.md` - This file
- `.gitignore` - Git ignore rules

## 📝 License

This is an archived version of the Gloria Victis Interactive Map.
Original source: gloriavictisgame.info
