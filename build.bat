@echo off

pushd "%~dp0"

if not exist ".\bin" mkdir ".\bin"
if not exist ".\data" mkdir ".\data"

pushd ".\bin"

cl -Zi -nologo ..\src\visrec.cpp 

popd ".\bin"

popd
