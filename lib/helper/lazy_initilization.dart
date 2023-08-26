

import 'package:get/get.dart';
import 'package:mugaga_task/controlls/dashbord_controller.dart';

import 'package:mugaga_task/controlls/map_controller.dart';

Future init() async {
 Get.lazyPut(() => MapController()); 
 Get.lazyPut(() => DashBordController()); 

}