from cryptography.fernet import Fernet


file = open('key.key','rb')
key = file.read()
file.close	

with open('tocrypt.txt','rb') as f:
	data = f.read()

fernet = Fernet(key)
encrypted = fernet.encrypt(data)

#write encypted file

with open('crypted_msg.txt','wb') as f:
	f.write(encrypted)


