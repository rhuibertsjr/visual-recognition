@echo off

pushd "%~dp0"

if not exist ".\build" mkdir ".\build"
if not exist ".\data" mkdir ".\data"

pushd ".\build"

cl -Zi /EHsc -nologo ..\src\visrec.cpp /I ..\include /link /LIBPATH:"C:\opencv\opencv\build\x64\vc16\lib" opencv_world490.lib

popd ".\build"

popd
