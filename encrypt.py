from cryptography.fernet import Fernet
import os

file = open('key.key','rb')
key = file.read()
file.close	

with open('/home/henna/src/Crypted-Decrypted/toCrypt/todecrypt.txt','rb') as f:
	data = f.read()
f.close()
fernet = Fernet(key)
encrypted = fernet.encrypt(data)

#write encypted file

with open('/home/henna/src/Crypted-Decrypted/crypted/crypted_msg.txt','wb') as f:
	f.write(encrypted)
f.close()
