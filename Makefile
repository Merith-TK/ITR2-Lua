clean:
	-rm -f ITR2Lib.zip
	
zip: clean
	7z a ITR2Lib.zip ./ITR2

gitpod-setup:
	sudo apt update
	sudo apt install p7zip-full