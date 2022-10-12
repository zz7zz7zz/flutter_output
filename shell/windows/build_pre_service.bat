echo.
echo ----- app service start -----
set config_dart_Dir=%cd%

echo product = %config_dart_Dir%
cd ..\config\
java -jar plugin_flutter_flavor.jar -e debug -c gp  -p moyu -y ./component_config.yaml -fdp ../../lib/features_core/com/module/service/service_manager.g.dart -rootPath ../.. -v true
cd %config_dart_Dir%

echo ----- app service end -----