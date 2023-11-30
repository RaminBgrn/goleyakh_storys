import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';

class BaseController extends Bindings {
  @override
  void dependencies() {
    Get.put(ImageController());
    Get.put(SettingController());
  }
}
