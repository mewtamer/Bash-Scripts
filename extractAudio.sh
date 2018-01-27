#! /bin/bash
for file in *.mkv; do
mkvextract tracks "$file" $1:"$file".ac3
done
