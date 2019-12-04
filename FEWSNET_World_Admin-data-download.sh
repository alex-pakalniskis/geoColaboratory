 
#!/bin/bash
# Download data
echo "Downloading FEWSNET_World_Admin boundary data"

# Download global administrative boundary data
wget http://shapefiles.fews.net.s3.amazonaws.com/ADMIN/FEWSNET_World_Admin.zip

# Unzip global administrative boundary data
unzip FEWSNET_World_Admin.zip

# Inform user of download completion
echo "Download complete"
