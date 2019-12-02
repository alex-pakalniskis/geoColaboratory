#!/bin/bash

# Install Miniconda

echo "Installing Miniconda"

# Download installer for Linux 64-bit machine (another shell script)

wget https://repo.continuum.io/miniconda/Miniconda3-4.5.4-Linux-x86_64.sh

# Make the installer executable as a program

chmod +x Miniconda3-4.5.4-Linux-x86_64.sh

# Run the installer program

bash ./Miniconda3-4.5.4-Linux-x86_64.sh -b -f -p /usr/local

# Install geospatial packages

echo "Installing GIS libraries"

# Use conda package manager to install geospatial Python libraries (and a visualization library) from conda-forge channel

conda install -y --prefix /usr/local -c conda-forge  geopandas rasterstats matplotlib

# Process complete

echo "Your GIS workstation is ready!"
