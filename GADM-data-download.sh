#!/bin/bash
# Download data
echo "Downloading Database of Global Administrative Areas GeoPackage"

wget https://biogeo.ucdavis.edu/data/gadm3.6/gadm36_gpkg.zip
unzip gadm36_gpkg.zip
echo "Download complete"
