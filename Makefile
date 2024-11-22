clean:
	-rm -f ITR2Lib.zip
	
zip: clean
	7z a ITR2Lib.zip ./ITR2
	
test-zip:
	7z a ITR2Lib-Test.zip ./ITR2Test

gitpod-setup:
	sudo apt update
	sudo apt install p7zip-full