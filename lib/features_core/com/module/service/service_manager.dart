import 'package:flutter_output/features_core/com/module/service/annotation/service_array_annotation.dart';
import 'package:flutter_output/features_core/com/module/service/i_task_service.dart';

import 'i_home_service.dart';
import 'i_trends_service.dart';
import 'i_message_service.dart';
import 'i_mine_service.dart';
import 'i_service.dart';
import 'service_manager.g.dart';

// part 'service_manager.g.dart';//SharedPartBuilder时才使用

@ServiceArrayAnnotation(
    "'package:flutter_output/features_core/com/module/service/i_service.dart'",
    [
      ServiceInfo(
          IHomeService.sName,
          "package:flutter_output/features/app_home/i_home_service_impl.dart",
          "IHomeServiceImpl"),
      ServiceInfo(
          ITrendsService.sName,
          "package:flutter_output/features/app_trends/i_trends_service_impl.dart",
          "ITrendsServiceImpl"),
      ServiceInfo(
          IMessageService.sName,
          "package:flutter_output/features/app_message/i_message_service_impl.dart",
          "IMessageServiceImpl"),
      ServiceInfo(
          IMineService.sName,
          "package:flutter_output/features/app_mine/i_mine_service_impl.dart",
          "IMineServiceImpl")
    ])
class ServiceManager {
  // 私有化构造方法
  ServiceManager._privateConstructor();

  static final ServiceManager _instance = ServiceManager._privateConstructor();

  static ServiceManager get instance => _instance;

  Map<String, IService> sMap = {};

  T get<T extends IService>(String sName) {
    IService? t = ServiceManagerImpl.get(sName);
    t ??= _getDefault(sName);
    return t as T;
  }

  T _getDefault<T extends IService>(String sName) {
    if (IHomeService.sName == sName) {
      return DefaultHomeServiceImpl() as T;
    } else if (IMessageService.sName == sName) {
      return DefaultMessageServiceImpl() as T;
    } else if (ITaskService.sName == sName) {
      return DefaultTaskServiceImpl() as T;
    } else if (IMineService.sName == sName) {
      return DefaultMineServiceImpl() as T;
    }
    throw Exception("$sName is not found");
  }
}
