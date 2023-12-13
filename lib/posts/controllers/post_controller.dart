import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/models/product_model.dart';

class PostController extends GetxController {
  final ProductModel _productModel = Get.find<SettingController>().getProductModel;
  ProductModel get getProductModel => _productModel;
}
