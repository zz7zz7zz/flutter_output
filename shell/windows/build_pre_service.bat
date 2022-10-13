echo.
echo ----- app service start -----
set config_dart_Dir=%cd%

echo config_dart_Dir = %config_dart_Dir%
echo envMode = %envMode%
echo channel = %channel%
echo product = %product%

cd ..\config\
java -jar plugin_flutter_flavor.jar -e %envMode% -c %channel%  -p %product% -y ./component_config.yaml -fdp ../../lib/features_core/com/module/service/service_manager.g.dart -rootPath ../.. -v true
cd %config_dart_Dir%

echo ----- app service end -----