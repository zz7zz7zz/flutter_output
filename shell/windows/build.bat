@echo off
echo.
echo ################# build start #################


set envMode=%1
set channel=%2
set product=%3
set rootDir=%cd%

echo envMode = %envMode%
echo channel = %channel%
echo product = %product%

cd %cd%\shell\windows
call build_pre.bat

echo.
echo ----- 2. build task -----
cd %rootDir%


cd %cd%\shell\windows
call build_post.bat

echo.
echo ################# build end #################