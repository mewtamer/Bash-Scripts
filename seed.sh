# /bin/bash
function seedAll {
	for file in *.torrent; do
~/GIT/bash-scripts/abtorrent -df -e 1000 "$file"
	done
}
cd ~/Hentai
seedAll
cd ../Music/Asian/Rumi\ Shishido
seedAll
cd ../../Soundtracks
seedAll
cd ../../Video/Hentai
seedAll
cd ../Japanese
seedAll
cd Digimon
seedAll
cd ../Mahou\ Shoujo
seedAll
cd Nanoha
seedAll
cd ../Ojamajo\ Doremi
seedAll
cd ../PreCure
seedAll
cd ../Cardcaptor\ Sakura
seedAll
cd ../../../American/MLP
seedAll
