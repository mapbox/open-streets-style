# Open Streets

*A TileMill/Carto style for OpenStreetMap PostGIS databases*

This style has been designed to work with a PostGIS database created with
[osm2pgsql][1]. Test databases used the default import style file.

[View Demo](http://mapbox.github.com/open-streets-style/)

[1]: http://wiki.openstreetmap.org/wiki/Osm2pgsql

## Requirements

Python >= 2.6 (for setting up styles)

TileMill >= 0.5.x

Postgres/PostGIS installation

Shapefile setup

OSM Extract imported into postgres


## Setup (for TileMill)

Now download and the styles:

    git clone git://github.com/mapbox/open-streets-style.git
    cd open-streets-style

Download the osm shapefiles into the layers sub-directory:

    cd open-streets
    mkdir layers
    cd layers
    wget http://tilemill-data.s3.amazonaws.com/osm/processed_p.zip
    unzip processed_p.zip
    wget http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip
    unzip shoreline_300.zip
    cd ../../

If you do not manually download these and provide the path during setup
then they will be downloaded on the fly which will take a long time.

Now edit the `configure.py` so the database and shapefiles settings match your setup.

Then run the script:

    python configure.py

Now copy or link the projection subdirectory called 'open-streets' into
your TileMill projects directory at:

    ~/Documents/MapBox/project/

You can make a symlink like:

    ln -s `pwd`/open-streets ~/Documents/MapBox/project/open-streets

Now go start TileMill and you should see the project available.

Unless you specified paths to local copies of `processed_p.shp` and 
`shoreline_300.shp` in config.py, these files will be downloaded the first
time you load the project in TileMill. They total approximately **360 MB**,
thus will take at least a few minutes to download.


## Troubleshooting

If your map appears blank then you likely have some error preventing the
stylesheet from loading for the first time. Since you loaded the stylesheet
through a backdoor symlink TileMill cannot protect you from manual setup 
errors.

Try viewing an individual tile to get access to an error:

    http://localhost:8889/1.0.0/open-streets/0/0/0.png
