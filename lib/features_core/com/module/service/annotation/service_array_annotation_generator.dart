import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_array_annotation.dart';
import 'package:source_gen/source_gen.dart';

class ServiceArrayAnnotationGenerator
    extends GeneratorForAnnotation<ServiceArrayAnnotation> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    var content = annotation.peek('bindServiceArray').toString();
    // String codeContent = '\n\t\t\t\tstatic const bindServiceArray = \'$content\';';
    // String codeContent = '\n\t\t\t\tstatic const bindServiceArray = \'xxx\';';
    // return 'class ServiceManagerImpl{\n'
    //     '$codeContent\n'
    //     '}';
    String baseServicePkg = annotation.read("baseServicePkg").stringValue;

    ConstantReader constantReader = annotation.read("bindServiceArray");
    List<ServiceInfo> list = [];
    if (constantReader.isList) {
      for (int i = 0; i < constantReader.listValue.length; i++) {
        String? sName =
            constantReader.listValue[i].getField("sName")?.toStringValue();
        String? pkg =
            constantReader.listValue[i].getField("pkg")?.toStringValue();
        String? implClass =
            constantReader.listValue[i].getField("implClass")?.toStringValue();
        list.add(ServiceInfo(sName!, pkg!, implClass!));
      }
    }
    return generateCode(baseServicePkg, list);
  }

  String generateCode(String baseServicePkg, List<ServiceInfo> list) {
    print("generateCode-Service -------- start -------- ");

    StringBuffer sb = StringBuffer();
    sb.write("\nimport $baseServicePkg;");
    for (int i = 0; i < list.length; i++) {
      sb.write("\nimport '${list[i].pkg}';");
    }

    sb.write("\n\nclass ServiceManagerImpl {");

    sb.write('\n\n     static bool _isComponentInitialized = false;');
    sb.write('\n\n     static final Map<String,IService> _serviceImplMap = {};');

    sb.write('\n\n     static void _init(){');
    for (int i = 0; i < list.length; i++) {
      sb.write(
          '\n        _serviceImplMap[\'${list[i].sName}\'] = ${list[i].implClass}();');
    }
    sb.write('\n        _isComponentInitialized = true;');
    sb.write('\n     }');

    sb.write('\n\n     static T? get<T extends IService>(String sName){');
    sb.write('\n         if(!_isComponentInitialized){');
    sb.write('\n              _init();');
    sb.write('\n         }');
    sb.write('\n         IService? service = _serviceImplMap[sName];');
    sb.write('\n         if(null != service) {');
    sb.write('\n            return service as T;');
    sb.write('\n         }');
    sb.write('\n         return null;');
    sb.write('\n    }');

    sb.write('\n}');

    print("generateCode-Service code = $sb");
    print("generateCode-Service -------- end -------- ");
    return sb.toString();
  }
}
