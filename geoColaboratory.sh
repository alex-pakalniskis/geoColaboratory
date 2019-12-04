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

# Process complete
echo "Your GIS workstation is ready!"

# Download data
echo "Downloading data"

# Make a directory to store data and move to it as working directory
mkdir ~/data
cd ~/data

# Create a directory to store gridded global precipitation data
mkdir chirps
cd chirps

# Download monthly precipitation data for entire planet (1981 to present)
wget ftp://ftp.chg.ucsb.edu/pub/org/chg/products/CHIRPS-2.0/global_monthly/tifs/chirps-v2.0.*.tif.gz

# Unzip precipitation data
gunzip *.tif.gz

# Create a directory to store gridded global temperature data
mkdir ~/data/chirts
cd ~/data/chirts

# Download monthly temperature data for entire planet (1983 to 2016)
wget ftp://ftp.chg.ucsb.edu/pub/org/chg/products/Tmax_monthly/CHIRTSmax.CDR/CHIRTSmax.*.*.tif

# Create a directory to store global administrative boundary data
mkdir ~/data/world-admin
cd ~/data/world-admin

# Download global administrative boundary data
wget http://shapefiles.fews.net.s3.amazonaws.com/ADMIN/FEWSNET_World_Admin.zip

# Unzip global administrative boundary data
unzip FEWSNET_World_Admin.zip
