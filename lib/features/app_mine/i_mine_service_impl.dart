import '../../features_core/com/module/service/i_mine_service.dart';

class IMineServiceImpl implements IMineService{

  @override
  String getName() {
    return "I am IHomeServiceImpl";
  }

  @override
  void goMine() {
    print("goMessage !");
  }

}