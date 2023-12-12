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
  final TextEditingController _productMeterTitleNumTowTextEditingController = TextEditingController();
  TextEditingController get getProductMeterTitleNumTowTextEditingController => _productMeterTitleNumTowTextEditingController;
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
}
