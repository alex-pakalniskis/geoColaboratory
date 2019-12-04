# Download data
echo "Downloading monthly, global CHIRPS data"

# Create a directory to store gridded global precipitation data
mkdir chirps
cd chirps

# Download monthly precipitation data for entire planet (1981 to present)
wget ftp://ftp.chg.ucsb.edu/pub/org/chg/products/CHIRPS-2.0/global_monthly/tifs/chirps-v2.0.*.tif.gz

# Unzip precipitation data
gunzip *.tif.gz

# Inform user of download completion
echo "Download complete"

