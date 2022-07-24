import 'package:flutter_output/features_core/com/module/service/i_message_service.dart';

class IMessageServiceImpl implements IMessageService{

  @override
  String getName() {
    return "I am IMessageServiceImpl";
  }

  @override
  void goMessage() {
      print("goMessage !");
  }

}