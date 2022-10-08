import 'package:flutter_output/features_core/com/module/service/i_service.dart';

abstract class ITrendsService extends IService {
  static const String sName = "IMineService";

  void getTrends();
}

class DefaultTrendsServiceImpl implements ITrendsService {
  @override
  String getName() {
    return "Default:DefaultTrendsServiceImpl:getName";
  }

  @override
  void getTrends() {
    print("Default:DefaultTrendsServiceImpl:getTask");
  }
}
