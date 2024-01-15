@echo off

pushd "%~dp0"
pushd ".\build"

visrec.exe ..\data\me.jpg

popd ".\build"
popd 
