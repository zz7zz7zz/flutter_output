// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ServiceArrayAnnotationGenerator
// **************************************************************************

import 'package:flutter_output/features_core/com/module/service/i_service.dart';
import 'package:flutter_output/features/app_home/i_home_service_impl.dart';//build:app_home
import 'package:flutter_output/features/app_trends/i_trends_service_impl.dart';//build:app_trends
import 'package:flutter_output/features/app_message/i_message_service_impl.dart';//build:app_message
import 'package:flutter_output/features/app_mine/i_mine_service_impl.dart';//build:app_mine
import 'package:flutter_output/features/app_task/i_task_service_impl.dart';//build:app_task

class ServiceManagerImpl {
  static bool _isComponentInitialized = false;

  static final Map<String, IService> _serviceImplMap = {};

  static void _init() {
    _serviceImplMap['IHomeService'] = IHomeServiceImpl();//build:app_home
    _serviceImplMap['IMineService'] = ITrendsServiceImpl();//build:app_trends
    _serviceImplMap['IMessageService'] = IMessageServiceImpl();//build:app_message
    _serviceImplMap['ITrendsService'] = IMineServiceImpl();//build:app_mine
    _serviceImplMap['ITaskService'] = ITasksServiceImpl();//build:app_task
    _isComponentInitialized = true;
  }

  static T? get<T extends IService>(String sName) {
    if (!_isComponentInitialized) {
      _init();
    }
    IService? service = _serviceImplMap[sName];
    if (null != service) {
      return service as T;
    }
    return null;
  }
}
