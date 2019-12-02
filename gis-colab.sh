#!/bin/bash

# install miniconda

echo "Installing conda"

wget https://repo.continuum.io/miniconda/Miniconda3-4.5.4-Linux-x86_64.sh

chmod +x Miniconda3-4.5.4-Linux-x86_64.sh

bash ./Miniconda3-4.5.4-Linux-x86_64.sh -b -f -p /usr/local


# install geospatial packages

conda install -y -c conda-forge geopandas rasterstats
