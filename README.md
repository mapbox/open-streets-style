# Open Streets

*A TileMill/Carto style for OpenStreetMap PostGIS databases*

This style has been designed to work with a PostGIS database created with
[osm2pgsql][1]. Test databases used the default import style file.

[View Demo](http://mapbox.github.com/open-streets-style/)

[1]: http://wiki.openstreetmap.org/wiki/Osm2pgsql

## Setup (for TileMill)

1. Edit the file `configure.py` so the database settings match your setup.
2. From the `open-streets-style` directory, run `./configure.py`.
3. Copy or link the `open-streets` subdirectory to your TileMill projects
   folder (`<tilemill directory>/files/project/`).

Unless you specified paths to local copies of `processed_p.shp` and 
`shoreline_300.shp` in config.py, these files will be downloaded the first
time you load the project in TileMill. They total approximately **360 MB**,
thus will take at least a few minutes to download.
