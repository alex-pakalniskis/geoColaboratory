#!/bin/bash
# Download data
echo "Downloading GADM data for United States"

wget https://biogeo.ucdavis.edu/data/gadm3.6/shp/gadm36_USA_shp.zip

# Unzip data
Unzip gadm36_USA_shp.zip

# Inform user of download completion
echo "Download complete"
