import 'package:build/build.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_annotation_generator.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_array_annotation_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder serviceBuilder(BuilderOptions option) =>
      LibraryBuilder(ServiceArrayAnnotationGenerator());
    // SharedPartBuilder([ServiceArrayAnnotationGenerator()], "resource_metadata_other");
    // SharedPartBuilder([ServiceAnnotationGenerator()], "resource_metadata_other");
    // LibraryBuilder(ServiceAnnotationGenerator());