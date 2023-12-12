import 'package:flutter/material.dart';
import 'package:goleyakh_storys/settings/models/image_model.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';

class ProductModel {
  String? productName;
  String? headerDescription;
  String? productDescription;
  String? brandLogo;
  String? productSKU;
  String? productCountry;
  Color? designColor;
  List<ImageModel>? productImages;
  List<SizeModel>? productSizes;

  ProductModel({
    this.productName,
    this.headerDescription,
    this.productDescription,
    this.brandLogo,
    this.productSKU,
    this.productCountry,
    this.designColor,
    this.productImages,
    this.productSizes,
  });
}
