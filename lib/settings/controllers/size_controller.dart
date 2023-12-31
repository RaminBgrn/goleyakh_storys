import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';

class SizeController extends GetxController {
  List<SizeModel> _sizeModel = [];
  List<SizeModel> get getSizeModel => _sizeModel;

  // product size text field controller
  final TextEditingController _sizeTextEditingController = TextEditingController();
  TextEditingController get getSizeTextEditingController => _sizeTextEditingController;

  // get product meter title and value num one controller
  final TextEditingController _productMeterTitleNumOneTextEditingController = TextEditingController();
  TextEditingController get getProductMeterTitleNumOneTextEditingController => _productMeterTitleNumOneTextEditingController;
  final TextEditingController _productMeterValueNumOneTextEditingController = TextEditingController();
  TextEditingController get getProductMeterValueNumOneTextEditingController => _productMeterValueNumOneTextEditingController;

  // get product meter title value num tow
  final TextEditingController _productMeterTitleNumTwoTextEditingController = TextEditingController();
  TextEditingController get getProductMeterTitleNumTowTextEditingController => _productMeterTitleNumTwoTextEditingController;
  final TextEditingController _productMeterValueNumTowTextEditingController = TextEditingController();
  TextEditingController get getProductMeterValueNumTowTextEditingController => _productMeterValueNumTowTextEditingController;

  // get product title and value num three
  final TextEditingController _productTitleNumThreeTextEditingController = TextEditingController();
  TextEditingController get getProductTitleNumThreeTextEditingController => _productTitleNumThreeTextEditingController;
  final TextEditingController _productValueNumThreeTextEditingController = TextEditingController();
  TextEditingController get getProductValueNumThreeTextEditingController => _productValueNumThreeTextEditingController;

  // price formatter to currency
  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter(
    decimalDigits: 0,
    symbol: ' تومان ',
    enableNegative: false,
  );
  CurrencyTextInputFormatter get getFormatter => _formatter;

  // price text editing controller
  final TextEditingController _priceTextEditingController = TextEditingController();
  TextEditingController get getPriceTextEditingController => _priceTextEditingController;

  // discount price text controller
  final TextEditingController _discountPriceTextEditingController = TextEditingController();
  TextEditingController get getDiscountPriceTextEditingController => _discountPriceTextEditingController;

  void saveSize() {
    if (_sizeTextEditingController.text.isEmpty) return;
    if (_priceTextEditingController.text.isEmpty) return;
    _sizeModel.add(SizeModel(
      price: _priceTextEditingController.text,
      size: _sizeTextEditingController.text,
      discounted: _discountPriceTextEditingController.text,
      titleOne: _productMeterTitleNumOneTextEditingController.text,
      valueOne: _productMeterValueNumOneTextEditingController.text,
      titleTwo: _productMeterTitleNumTwoTextEditingController.text,
      valueTwo: _productMeterValueNumTowTextEditingController.text,
      titleThree: _productTitleNumThreeTextEditingController.text,
      valueThree: _productValueNumThreeTextEditingController.text,
    ));
    _clearSizeTextData();
    update();
  }

  void _clearSizeTextData() {
    _discountPriceTextEditingController.clear();
    _priceTextEditingController.clear();
    // _productMeterTitleNumOneTextEditingController.clear();
    _productMeterValueNumOneTextEditingController.clear();
    // _productMeterTitleNumTwoTextEditingController.clear();
    _productMeterValueNumTowTextEditingController.clear();
    // _productTitleNumThreeTextEditingController.clear();
    _productValueNumThreeTextEditingController.clear();
    _sizeTextEditingController.clear();
  }

  void removeSize(SizeModel model) {
    _sizeModel.remove(model);
    update();
  }
}
