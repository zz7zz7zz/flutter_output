import 'package:flutter_output/features/app_core/com/module/service/i_service.dart';

abstract class IMineService extends IService{

  static const String sName = "IMineService";

  void goTrends();

}