# Gloria Victis Interactive Map

Interactive map for Gloria Victis game, featuring the main world, guild castles, and arena/tournament areas.

## Features

- Full interactive map with zoom and pan
- Combines Main map, Guild Castle (GC1), and Arena/Tournament areas
- Works completely offline (all tiles included)
- Responsive design

## Usage

Simply open `index.html` in a web browser, or visit the [GitHub Pages site](https://sersavage.github.io/gvlegacy-interactive-map/).

## Map Structure

- **Main Map**: Base world map (x0-x20, y0-y17)
- **Guild Castle (GC1)**: Overlay for guild castle areas
- **Arena/Tournament**: Overlay for arena and tournament areas

Tiles are positioned according to their XY coordinates and composited together.

## Technical Details

- Built with Leaflet.js
- Uses CRS.Simple coordinate system
- Tile size: 256x256 pixels
- Map dimensions: 21x18 tiles (5376x4608 pixels)

## License

This is an archived version of the Gloria Victis Interactive Map.
Original source: gloriavictisgame.info

