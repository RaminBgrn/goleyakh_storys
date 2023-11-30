import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
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
}
