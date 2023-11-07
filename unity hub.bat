@echo off

set "PATH_TO_EXE=C:\Program Files\Unity\Unity Hub"
set "FILE_NAME=Unity Hub.exe"

pushd %PATH_TO_EXE%
start "" "%FILE_NAME%"
popd

exit
