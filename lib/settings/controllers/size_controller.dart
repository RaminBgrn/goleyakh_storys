import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';

class SizeController extends GetxController {
  List<SizeModel> _sizeModel = [];
  List<SizeModel> get getSizeModel => _sizeModel;

  // product size text field controller
  final TextEditingController _sizeTextEditingController = TextEditingController();
  TextEditingController get getSizeTextEditingController => _sizeTextEditingController;

  // get product meter title num one controller
  final TextEditingController _productMeterTitleNumOneTextEditingController = TextEditingController();
  TextEditingController get getProductMeterTitleNumOneTextEditingController => _productMeterTitleNumOneTextEditingController;

  // get product meter value num one controller
  final TextEditingController _productMeterValueNumTwoTextEditingController = TextEditingController();
  TextEditingController get getPruductMeterValueNumTwoTextEditingController => _productMeterValueNumTwoTextEditingController;

  // get product meter v

  // price text editing controller
  final TextEditingController _priceTextEditingController = TextEditingController();
  TextEditingController get getPriceTextEditingController => _priceTextEditingController;
}
