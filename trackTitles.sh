# /bin/bash
ls -1 > file_list.txt
sed -i 's/_/ /g' file_list.txt
sed -i 's/1/ /g' file_list.txt
sed -i 's/2/ /g' file_list.txt
sed -i 's/3/ /g' file_list.txt
sed -i 's/4/ /g' file_list.txt
sed -i 's/5/ /g' file_list.txt
sed -i 's/6/ /g' file_list.txt
sed -i 's/7/ /g' file_list.txt
sed -i 's/8/ /g' file_list.txt
sed -i 's/9/ /g' file_list.txt
sed -i 's/0/ /g' file_list.txt
sed -i 's/-/ /g' file_list.txt
sed -i 's/  / /g' file_list.txt
sed -i 's/.flac//g' file_list.txt
ls -1 >> file_list.txt

