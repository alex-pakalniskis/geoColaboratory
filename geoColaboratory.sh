#!/bin/bash
# Install geospatial packages and dependencies
echo "Installing GIS libraries"

# Update Linux machine
apt update
apt upgrade

# Install GDAL: Geospatial Data Abstraction Library and Python bindings (its a C library)
apt install gdal-bin python-gdal python3-gdal

# Install rtree - Geopandas requirement
apt install python3-rtree

# Install Geopandas
pip install git+git://github.com/geopandas/geopandas.git

# Install Geopandas dependencies
pip install -r https://raw.githubusercontent.com/geopandas/geopandas/master/requirements.txt

# Install descartes - an additional Geopandas requirement for Colaboratory
pip install descartes

# Install rasterstats
pip install git+git://github.com/perrygeo/python-rasterstats.git

# Install rasterstats requirements
pip install -r https://raw.githubusercontent.com/perrygeo/python-rasterstats/master/requirements.txt

# A CLI utility to download public data from Google Drive without OAuth 
pip install gdown

# Process complete
echo "Your GIS workstation is ready!"
