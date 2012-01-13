#!/usr/bin/env python

## OPEN STREETS CONFIGURATION OPTIONS ##

# PostGIS connection setup
dbname   = "osm"
# leave the below as empty
# string unless you know have
# custom authentication needs
host     = "" # localhost
port     = "" # 5432
user     = "" # postgres
password = ""

# Land shapefiles required for the style. If you have already downloaded
# these or wish to use different versions, specify their paths here.
# The latest versions can be downloaded from osm.org:
# - http://tile.openstreetmap.org/processed_p.tar.bz2
# - http://tile.openstreetmap.org/shoreline_300.tar.bz2

## uncheck these lines to trigger automaticate download
#processed_p = "http://tilemill-data.s3.amazonaws.com/osm/processed_p.zip"
#shoreline_300 = "http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip"

## these lines will look for these shapefiles locally,
## assuming you downloaded them manually into the open-streets/layer directory
processed_p = "./layers/processed_p.shp"
shoreline_300 = "./layers/shoreline_300.shp"

# For postgres layers mapnik by default will query postgis for the
# extent to know whether to process the layer during rendering
# Increase performance if you are only rendering a particular area by
# specifying a bounding box in the format of "XMIN,YMIN,XMAX,YMAX" in the
# same units as the database (probably spherical mercator meters). The
# whole world is "-20037508.34,-20037508.34,20037508.34,20037508.34".
extent = "-20037508.34,-20037508.34,20037508.34,20037508.34"

# osm2pgsql table prefix - only change this is you explicitly imported
# with a custom prefix (--prefix)
prefix = 'planet_osm'

# if you have > 2GB mem, turn this on for slightly faster rendering
feat_caching = True

#################################

import json
from sys import path
from os.path import join

mml = join(path[0], 'open-streets/project.mml')

with open(mml, 'r') as f:
  newf = json.loads(f.read())
f.closed

with open(mml, 'w') as f:
  for layer in newf["Layer"]:
    layer["properties"] = {}
    if feat_caching:
        layer["properties"]["cache-features"] = "true"
    ds_type = layer["Datasource"].get("type")
    if ds_type and ds_type == "postgis":
        layer["Datasource"]["host"] = host
        layer["Datasource"]["port"] = port
        layer["Datasource"]["dbname"] = dbname
        layer["Datasource"]["user"] = user
        layer["Datasource"]["password"] = password
        layer["Datasource"]["extent"] = extent
        layer["Datasource"]["srid"] = 900913
        if prefix != 'planet_osm':
            layer["Datasource"]["table"] = layer["Datasource"]["table"].replace('planet_osm',prefix)
    ds_file = layer["Datasource"].get("file")
    if ds_file:
        if layer["id"] == "shoreline_300":
          layer["Datasource"]["file"] = shoreline_300
        elif (layer["id"] == "processed_p") or (layer["id"] == "processed_p_outline"):
          layer["Datasource"]["file"] = processed_p
  f.write(json.dumps(newf, sort_keys=True, indent=2))
f.closed
