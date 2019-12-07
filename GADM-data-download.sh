#!/bin/bash
# Download data
echo "Downloading Database of Global Administrative Areas GeoPackage"

wget https://biogeo.ucdavis.edu/data/gadm3.6/gadm36_gpkg.zip

# Unzip GADM data
unzip gadm36_gpkg.zip

# Inform user of download completion
echo "Download complete"
