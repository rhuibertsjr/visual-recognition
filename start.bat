@echo off

pushd "%~dp0"
pushd ".\build"

visrec.exe

popd ".\build"
popd 
