@echo off
echo.
echo ################# build start #################


set envMode=%2
set channel=%3
set product=%4
set rootDir=%cd%

echo envMode = %envMode%
echo channel = %channel%
echo product = %product%
echo rootDir = %rootDir%

cd %cd%\shell\windows
call build_pre.bat

echo.
echo ----- 2. build task -----
cd %rootDir%


cd %cd%\shell\windows
call build_post.bat

echo.
echo ################# build end #################