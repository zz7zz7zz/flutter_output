import '../../features_core/com/module/service/i_task_service.dart';

class ITasksServiceImpl implements ITaskService{

  @override
  String getName() {
    return "I am ITasksServiceImpl";
  }

  @override
  void getTask() {
    print("getTask !");
  }

}