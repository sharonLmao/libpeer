@echo off
echo Burgil is the king of the world
call ../esp-idf/export.bat
idf.py menuconfig
pause