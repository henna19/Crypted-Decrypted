from cryptography.fernet import Fernet


file = open('key.key','rb')
key = file.read()
file.close	

with open('crypted_msg.txt','rb') as f:
	data = f.read()

fernet = Fernet(key)
decrypted = fernet.decrypt(data)

#write encypted file

with open('decrypt_msg.txt','wb') as f:
	f.write(decrypted)


