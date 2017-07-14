Decrypt:
	$ openssl aes-256-cbc -d -in files.tar.enc -out files.tar -pass file:key
	$ tar -xvf files.tar

Encrypt
	$ tar -cvhf files.tar files
	$ openssl aes-256-cbc -e -in files.tar.enc -out files.tar -pass file:key
