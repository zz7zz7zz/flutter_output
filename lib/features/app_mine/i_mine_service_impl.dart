import '../../features_core/com/module/service/i_mine_service.dart';

class IMineServiceImpl implements IMineService{

  @override
  String getName() {
    return "I am IMineServiceImpl";
  }

  @override
  void goMine() {
    print("go mine !");
  }

}