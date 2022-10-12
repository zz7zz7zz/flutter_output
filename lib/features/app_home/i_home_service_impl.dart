import 'package:flutter_output/features_core/com/module/service/i_home_service.dart';

class IHomeServiceImpl implements IHomeService{

  @override
  String getName() {
    return "I am IHomeServiceImpl";
  }

  @override
  void goHome() {
      print("go home now !");
  }

  @override
  String goBeautyGirlJpg() {
    return "lib/features/app_home/res/images/a.jpg";
  }

}