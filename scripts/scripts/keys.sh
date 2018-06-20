#!/bin/sh

echo "Starting Keys setup (GitHub, AWS, GCP)"
echo "Skipping setting up keys"
cd ~
git clone https://github.com/soumendra/dotkeys.git
mv -f ./dotkeys/* ~/.ssh/
rm -rf ./dotkeys
echo "Keys setup complete"
