#!/usr/bin/bash



echo "Warning !!!"

echo "The script should be runned with dot sepetaed to have environment variables set after the script execution"
echo
echo
Installation_path="/home/puneeth/intelFPGA_lite/21.1/"

quatrus_path="quartus/"

questa_path="questa_fse/"

# add both of this path bins to environment variable

echo "Adding "$Installation_path$quatrus_path"bin/" " and "$Installation_path$questa_path"bin/" " to PATH"
export PATH=$PATH:$Installation_path$quatrus_path"bin/":$Installation_path$questa_path"bin/"


echo "Adding LM_LICENSE_FILE environment variable"
export LM_LICENSE_FILE=/home/puneeth/intelFPGA_lite/21.1/licenses/LR-085849_License.dat

