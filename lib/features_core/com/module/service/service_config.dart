import 'annotation/service_array_annotation.dart';
import 'i_home_service.dart';
import 'i_message_service.dart';
import 'i_mine_service.dart';
import 'i_trends_service.dart';

const List<ServiceInfo> serviceConfig = [
  ServiceInfo(IHomeService.sName,"package:flutter_output/features/app_home/i_home_service_impl.dart","IHomeServiceImpl"),
  ServiceInfo(ITrendsService.sName,"package:flutter_output/features/app_trends/i_trends_service_impl.dart","ITrendsServiceImpl"),
  ServiceInfo(IMessageService.sName,"package:flutter_output/features/app_message/i_message_service_impl.dart","IMessageServiceImpl"),
  ServiceInfo(IMineService.sName,"package:flutter_output/features/app_mine/i_mine_service_impl.dart","IMineServiceImpl")
];