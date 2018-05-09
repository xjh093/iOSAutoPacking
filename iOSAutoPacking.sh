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
echo "And then press Enter...\n..."
read input
echo ".\n..\n..."
echo "File path is:"
echo "${input}"
echo ".\n..\n..."

# Create Payload folder.
Payload=${input%/*}"/Payload"
mkdir Payload
echo "Payload:${Payload}"

# Move file to Payload.
cp -rf ${input} Payload 

# Zip Payload.
zip -q -r Payload".zip" Payload

# Remove Payload folder.
#rm -rf Payload

# Rename 'zip' to 'ipa'.
mv Payload".zip" Payload".ipa"

echo "Done!!!"
echo "Find the Payload.ipa file..."
echo "It's it!"

