
import 'package:flutter_output/features/app_home/i_home_service_impl.dart';
import 'package:flutter_output/features_core/com/module/service/annotation/service_array_annotation.dart';

import 'i_home_service.dart';
import 'i_trends_service.dart';
import 'i_message_service.dart';
import 'i_mine_service.dart';
import 'i_service.dart';

// part 'service_manager.g.dart';//SharedPartBuilder时才使用

@ServiceArrayAnnotation([
  ServiceInfo(IHomeService.sName,"package:flutter_output/features/app_home/i_home_service_impl.dart","IHomeServiceImpl"),
  ServiceInfo(ITrendsService.sName,"package:flutter_output/features/app_home/i_trends_service_impl.dart","ITrendsServiceImpl"),
  ServiceInfo(IMessageService.sName,"package:flutter_output/features/app_home/i_message_service_impl.dart","IMessageServiceImpl"),
  ServiceInfo(IMineService.sName,"package:flutter_output/features/app_home/i_mine_service_impl.dart","IMineServiceImpl")])
class ServiceManager {

    // 私有化构造方法
    ServiceManager._privateConstructor();

    static final ServiceManager _instance = ServiceManager._privateConstructor();

    static ServiceManager get instance => _instance;

    Map<String,IService> sMap = {};

    T get<T extends IService>(String sName){
      sMap[sName] = IHomeServiceImpl();
      return sMap[sName] as T;
    }

    void register(){

    }
}