#! /bin/bash
for file in *.jpg; do
cuneiform "$file" > /dev/null
cat -s cuneiform-out.txt >> out.txt
done
