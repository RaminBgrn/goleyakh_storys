import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/color_controller.dart';
import 'package:goleyakh_storys/settings/controllers/drop_down_controller.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';
import 'package:goleyakh_storys/settings/controllers/size_controller.dart';
import 'package:goleyakh_storys/settings/models/product_model.dart';

class SettingController extends GetxController {
  // product model
  ProductModel _productModel = ProductModel();
  ProductModel get getProductModel => _productModel;

  /// title section data
  final TextEditingController _productTitleController = TextEditingController();
  TextEditingController get getProductTitleController => _productTitleController;

  /// header description data
  final TextEditingController _headerDescriptionController = TextEditingController();
  TextEditingController get getHeaderDescriptionController => _headerDescriptionController;

  /// product description data
  final TextEditingController _productDescriptionController = TextEditingController();
  TextEditingController get getProductDescriptionController => _productDescriptionController;

  /// country made product
  final TextEditingController _countryMadeProductController = TextEditingController();
  TextEditingController get getCountryMadeProductController => _countryMadeProductController;

  /// product SKU text
  final TextEditingController _productSKUController = TextEditingController();
  TextEditingController get getProductSKUController => _productSKUController;

  void setDataToModel() {
    print(Get.find<SettingController>().getProductModel.brandLogo);
    _productModel.productName = _productTitleController.text;
    _productModel.headerDescription = _headerDescriptionController.text;
    _productModel.productDescription = _productDescriptionController.text;
    _productModel.productCountry = _countryMadeProductController.text;
    _productModel.productSKU = _productSKUController.text;
    _productModel.brandLogo = Get.find<DropDownController>().getDropDownModel.path;
    _productModel.designColor = Get.find<ColorController>().getBackgroundColor;
    _productModel.productImages = Get.find<ImageController>().getImageSelected;
    _productModel.productSizes = Get.find<SizeController>().getSizeModel;
    update();
  }
}
