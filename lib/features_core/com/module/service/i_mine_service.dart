import 'package:flutter_output/features_core/com/module/service/i_service.dart';

abstract class IMineService extends IService {
  static const String sName = "ITrendsService";

  void goMine();
}

class DefaultMineServiceImpl implements IMineService {
  @override
  String getName() {
    return "Default:DefaultMineServiceImpl:getName";
  }

  @override
  void goMine() {
    print("Default:DefaultMineServiceImpl:goMine");
  }
}
