import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_annotation.dart';
import 'package:source_gen/source_gen.dart';

class ServiceAnnotationGenerator
    extends GeneratorForAnnotation<ServiceAnnotation> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return "class ServiceManagerImpl{}";
  }
}
