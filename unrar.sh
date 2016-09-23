#! /bin/bash
for file in *.rar; do
dir=$(basename "$file" .rar) # remove the .zip from the filename
mkdir "$dir"
cd "$dir" && unrar -x ../"$file" && rm ../"$file" # unzip and remove file if successful
cd ..
done
