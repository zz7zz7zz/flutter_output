import 'package:flutter_output/features_core/com/module/service/i_service.dart';

abstract class IHomeService extends IService {
  static const String sName = "IHomeService";

  void goHome();

  String goBeautyGirlJpg();
}

class DefaultHomeServiceImpl implements IHomeService {
  @override
  String getName() {
    return "Default:DefaultHomeServiceImpl:getName";
  }

  @override
  void goHome() {
    print("Default:DefaultHomeServiceImpl:go home now");
  }

  @override
  String goBeautyGirlJpg() {
    return "Default:DefaultHomeServiceImpl:goBeautyGirlJpg";
  }


}
