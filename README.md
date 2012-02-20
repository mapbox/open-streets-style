# Open Streets

*A TileMill/Carto style for OpenStreetMap PostGIS databases*

This style has been designed to work with a PostGIS database created with
[osm2pgsql][1]. Test databases used the default import style file.

[View Demo](http://mapbox.github.com/open-streets-style/)

You may also be interested in [OSM Bright](http://github.com/mapbox/osm-bright) which now supports osm2pgsql and is more actively maintained.

[1]: http://wiki.openstreetmap.org/wiki/Osm2pgsql

## Requirements

Python >= 2.6 (for setting up styles)

TileMill >= 0.5.x

Postgres/PostGIS installation

Shapefile setup

OSM Extract imported into postgres


## Setup (for TileMill)

Download and the styles:

    git clone git://github.com/mapbox/open-streets-style.git

Download the osm shapefiles into the layers sub-directory:

    cd open-streets-style/open-streets
    mkdir layers
    cd layers
    wget http://tilemill-data.s3.amazonaws.com/osm/processed_p.zip
    unzip processed_p.zip
    wget http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip
    unzip shoreline_300.zip
    cd ../../

Now edit the `configure.py` so the database and shapefiles settings match your setup.

Make sure you can connect with the same set of options on the command line like:

    psql osm

Note: host, user, and password are often optional, but on some systems required. It depends
on your postgres setup. Just be sure to understand you setup before blindly continuing.

Then run the script which will fixup your shapefile paths and database connection settings
in the styles 'mml' file.

    python configure.py

Now copy or link the projection subdirectory called 'open-streets' into
your TileMill projects directory at:

    ~/Documents/MapBox/project/

You can make a symlink like:

    ln -s `pwd`/open-streets ~/Documents/MapBox/project/open-streets


Now go start TileMill and you should see the project available.


## Troubleshooting

If your map appears blank then you likely have some error preventing the
stylesheet from loading for the first time. Since you loaded the stylesheet
through a backdoor symlink TileMill cannot protect you from manual setup 
errors.

Try viewing an individual tile to get access to an error:

    http://localhost:8889/1.0.0/open-streets/0/0/0.png
