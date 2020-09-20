#!/bin/bash

while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/henna/src/Crypted-Decrypted/toCrypt)" ]; then
		for file in $dir/Crypted-Decrypted/toCrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/Crypted-Decrypted/toCrypt/$txt $dir/Crypted-Decrypted/toCrypt/tocrypt.txt
		
			cd $dir/Crypted-Decrypted
			python3 encrypt.py

			cd $dir/Crypted-Decrypted/toCrypt
			rm $txt
		done
	fi
done
