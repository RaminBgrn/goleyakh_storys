import 'package:get/get.dart';
import 'package:goleyakh_storys/common/main_controller.dart';
import 'package:goleyakh_storys/posts/controllers/post_controller.dart';
import 'package:goleyakh_storys/preview/controllers/data_controller.dart';
import 'package:goleyakh_storys/settings/controllers/color_controller.dart';
import 'package:goleyakh_storys/settings/controllers/drop_down_controller.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/controllers/size_controller.dart';

class BaseController extends Bindings {
  @override
  void dependencies() {
    Get.put(ImageController());
    Get.put(SettingController());
    Get.put(ColorController());
    Get.put(SizeController());
    Get.put(DropDownController());
    Get.put(MainController());
    Get.put(DataController());
    Get.put(PostController());
  }
}
