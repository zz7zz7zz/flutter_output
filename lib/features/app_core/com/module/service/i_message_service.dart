import 'package:flutter_output/features/app_core/com/module/service/i_service.dart';

abstract class IMessageService extends IService{

  static const String sName = "IMessageService";

  void goMessage();

}