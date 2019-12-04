#!/bin/bash
# Download data
echo "Downloading monthly, global CHIRTS data"

# Create a directory to store gridded global precipitation data
mkdir chirts
cd chirts

# Download monthly temperature data for entire planet (1983 to 2016)
wget ftp://ftp.chg.ucsb.edu/pub/org/chg/products/Tmax_monthly/CHIRTSmax.CDR/CHIRTSmax.*.*.tif

# Inform user of download completion
echo "Download complete"
