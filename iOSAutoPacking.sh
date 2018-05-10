#!bin/bash
# author: Haocold
# date: 2018-05-09 21:08:12

echo "\n"
echo "============================"
echo "=                          ="
echo "=     iOS Auto Packing     ="
echo "=      Made by Haocold     ="
echo "=    2018-05-09 21:08:12   ="
echo "=                          ="
echo "============================"

echo ".\n..\n...\nBegin...\n..."
echo "Please input file path...\n..."
echo "File ends with .app...\n..."
echo "It's in 'Products' of your project...\n..."
echo "Drag it into terminal...\n..."
echo "And then press Enter..."
echo ".\n..\n..."
echo "File path is:"
read input
echo ".\n..\n..."

# Create Payload folder.
# %/* : is delete the last path component of 'input'
echo "mkdir 'Payload' folder..."
cd ${input%/*}
mkdir Payload
echo ".\n..\n..."

# Move file to Payload.
echo "copy file..."
app_name=${input##*/} # Demo.app
cp -rf ${app_name} Payload
echo ".\n..\n..."

# Zip Payload.
echo "zip file..."
zip -q -r Payload".zip" Payload
echo ".\n..\n..."

# Rename 'zip' to 'ipa'.
echo "rename 'zip' to 'ipa'..."
app_name=${app_name%.*}".ipa" # Demo.ipa
mv Payload".zip" ${app_name} # Payload.zip -> Demo.ipa
echo ".\n..\n..."

rm -rf Payload

echo "Done!!!"
echo "Find the '${app_name}' file..."
echo "It's it!\n"
