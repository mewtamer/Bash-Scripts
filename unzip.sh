#! /bin/bash
for file in *.zip; do
dir=$(basename "$file" .zip) # remove the .zip from the filename
mkdir "$dir"
cd "$dir" && unzip ../"$file" && rm ../"$file" # unzip and remove file if successful
cd ..
done
