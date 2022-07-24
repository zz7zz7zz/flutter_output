import 'package:flutter_output/features_core/com/module/service/i_service.dart';

abstract class ITaskService extends IService{

  static const String sName = "ITaskService";

  void getTask();

}