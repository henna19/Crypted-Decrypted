#!/bin/bash


while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/henna/src/Crypted-Decrypted/toDecrypt)" ]; then
		for file in $dir/Crypted-Decrypted/toDecrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/Crypted-Decrypted/toDecrypt/$txt $dir/Crypted-Decrypted/toDecrypt/todecrypt.txt
		
			cd $dir/Crypted-Decrypted
			python3 decrypt.py

			cd $dir/Crypted-Decrypted/toDecrypt
			rm $txt
		done
	fi
done


