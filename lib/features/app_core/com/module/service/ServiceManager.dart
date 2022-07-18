
class ServiceManager {

  // 私有化构造方法
  ServiceManager._privateConstructor();

  static final ServiceManager _instance = ServiceManager._privateConstructor();

  static ServiceManager get instance => _instance;

  // Map<String,? extends IService> map = {};
  //
  // T get<T>(T t){
  //   return "";
  // }

}