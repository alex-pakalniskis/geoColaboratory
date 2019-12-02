#!/bin/bash

# Install geospatial packages

echo "Installing GIS libraries"

apt update
apt upgrade
apt install gdal-bin python-gdal python3-gdal 
# Install rtree - Geopandas requirment
apt install python3-rtree 
# Install Geopandas
pip install git+git://github.com/geopandas/geopandas.git
# Install descartes - Geopandas requirement
pip install descartes 
# Install rasterstats
pip install git+git://github.com/perrygeo/python-rasterstats.git
# Install 
pip install rasterio

# Process complete

echo "Your GIS workstation is ready!"
