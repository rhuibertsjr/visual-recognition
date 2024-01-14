@echo off

pushd "%~dp0"

if not exist ".\build" mkdir ".\build"
if not exist ".\data" mkdir ".\data"

pushd ".\build"

set OPENCV_LIB="S:\human-machine-interface\visual-recognition\3rdparty\opencv\build\x64\vc16\lib"

cl -Zi /EHsc -nologo ..\src\visrec.cpp /I ..\3rdparty\opencv\build\include /link /LIBPATH:%OPENCV_LIB% opencv_world490.lib

popd ".\build"

popd
