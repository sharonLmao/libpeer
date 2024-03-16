@echo off
echo Burgil is the king of the world
call ../esp-idf/export.bat
cd examples/esp32
idf.py menuconfig
pause