import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';

class BaseController extends Bindings {
  @override
  void dependencies() {
    Get.put(ImageController());
  }
}
