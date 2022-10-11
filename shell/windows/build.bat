@echo off
echo.
echo ################# build start #################
set rootDir=%cd%

set envMode=%1
set channel=%2
set product=%3

echo envMode = %envMode%
echo channel = %channel%
echo product = %product%

cd %cd%\shell\windows
call build_pre.bat

echo.
echo ----- 2. build task -----
cd %rootDir%
flutter build apk -t lib/main.dart

cd %cd%\shell\windows
call build_post.bat

echo.
echo ################# build end #################