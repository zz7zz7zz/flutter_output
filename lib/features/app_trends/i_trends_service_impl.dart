import '../../features_core/com/module/service/i_trends_service.dart';

class ITrendsServiceImpl implements ITrendsService{
  @override
  String getName() {
    return "I am ITrendsServiceImpl";
  }

  @override
  void getTrends() {
    print("getTrends !");
  }

}