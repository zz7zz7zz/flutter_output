

import 'package:flutter_output/features/app_home/i_home_service_impl.dart';

import 'i_service.dart';

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

}