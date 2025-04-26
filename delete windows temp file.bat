TITLE "Cleaning your Temp files"
@echo "Cleaning your Temp files under Local-Appdata"
rd /s /q %temp%
mkdir %temp%

@echo "Cleaning your Temp files under c:\windows"
rd /s /q c:\windows\temp\
mkdir c:\windows\temp\

@echo "cleaning done!!"
