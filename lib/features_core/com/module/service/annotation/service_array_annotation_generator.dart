import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_array_annotation.dart';
import 'package:source_gen/source_gen.dart';

class ServiceArrayAnnotationGenerator extends GeneratorForAnnotation<ServiceArrayAnnotation>{

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    var content = annotation.peek('bindServiceArray').toString();
    // String codeContent = '\n\t\t\t\tstatic const bindServiceArray = \'$content\';';
    String codeContent = '\n\t\t\t\tstatic const bindServiceArray = \'xxx\';';
    return 'class ServiceManagerImpl{\n'
        '$codeContent\n'
        '}';
  }

}