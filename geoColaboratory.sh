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

# Install partridge for GTFS data handling with Geopandas support
pip install partridge[full]

# Process complete
echo "Your GIS workstation is ready!"
