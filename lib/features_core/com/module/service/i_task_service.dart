import 'package:flutter_output/features_core/com/module/service/i_service.dart';

abstract class ITaskService extends IService {
  static const String sName = "ITaskService";

  void getTask();
}

class DefaultTaskServiceImpl implements ITaskService {
  @override
  String getName() {
    return "Default:DefaultTaskServiceImpl:getName";
  }

  @override
  void getTask() {
    print("Default:DefaultTaskServiceImpl:getTask");
  }
}
