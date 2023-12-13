import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/custom/model/radio_data.dart';
import 'package:goleyakh_storys/custom/widget_radio_group.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/models/product_model.dart';
import 'package:goleyakh_storys/static/colors.dart';

class DataController extends GetxController {
  final ProductModel _productModel = Get.find<SettingController>().getProductModel;
  ProductModel get getProductModel => _productModel;
  int _firstImageIndex = 0;
  int _secondImageIndex = 0;
  String _firstImage = '';
  String get getFirstImage => _firstImage;

  String _secondImage = '';
  String get getSecondImage => _secondImage;

  BoxFit _firstImageBoxFit = BoxFit.contain;
  BoxFit get getFirstImageBoxFit => _firstImageBoxFit;

  BoxFit _secondImageBoxFit = BoxFit.contain;
  BoxFit get getSecondImageBoxFit => _secondImageBoxFit;

  void setImages() {
    if (_productModel.productImages != null && _productModel.productImages!.isEmpty) return;
    _firstImage = _productModel.productImages![0].imagePath;
    // ignore: prefer_is_empty
    if (_productModel.productImages!.length <= 1) return;
    _secondImage = _productModel.productImages![1].imagePath;
  }

  void changeFirstImage() {
    if (_productModel.productImages!.length == _firstImageIndex) _firstImageIndex = 0;
    _firstImage = _productModel.productImages![_firstImageIndex].imagePath;
    _firstImageIndex++;
    update();
  }

  void changeSecondImage() {
    if (_productModel.productImages!.length == _secondImageIndex) _secondImageIndex = 0;
    _secondImage = _productModel.productImages![_secondImageIndex].imagePath;
    _secondImageIndex++;
    update();
  }

  void changeFirstImageBoxFit() {
    Get.bottomSheet(
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: myGrey[100]!,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(-2, 0),
                color: myGrey[600]!.withOpacity(0.5),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              const Gap(8),
              Text(
                'نوع نمایش تصویر',
                style: TextStyle(
                  fontFamily: 'mikhak',
                  fontSize: 14,
                  color: myGrey[500],
                ),
              ),
              const Gap(8),
              WidgetRadioGroup(
                activeIconColor: myGreen[500],
                activeDefault: 1,
                deactivateIconColor: myGrey[400],
                direction: Axis.horizontal,
                itemMargin: const EdgeInsets.symmetric(horizontal: 8),
                iconHeight: 30,
                data: [
                  RadioData(iconPath: "svgs/fill.svg", value: BoxFit.fill),
                  RadioData(iconPath: "svgs/cover.svg", value: BoxFit.cover),
                  RadioData(iconPath: "svgs/contain.svg", value: BoxFit.contain),
                  RadioData(iconPath: "svgs/fill_height.svg", value: BoxFit.fitHeight),
                  RadioData(iconPath: "svgs/fill_width.svg", value: BoxFit.fitWidth),
                ],
                iconTye: IconType.svgAsset,
                onRadioClick: (value, index) {
                  _firstImageBoxFit = value;
                  update();
                },
              ),
            ],
          ),
        ),
        barrierColor: Colors.transparent);
  }

  Color priceColor(int index) {
    List<Color> colors = [
      const Color(0xFFFFFFEB),
      const Color(0xFFF1EBFF),
      const Color(0xFFFFEBEB),
      const Color(0xFFEBFFF0),
      const Color(0xFFE9F7FF),
      const Color(0xFFE0E9FF),
      const Color(0xFFEBFFF0),
      const Color(0xFFFFEBFF),
      const Color(0xFFFFFFEB),
    ];
    return colors[index];
  }

  void changeSecondImageBoxFit() {
    Get.bottomSheet(
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: myGrey[100]!,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(-2, 0),
                color: myGrey[600]!.withOpacity(0.5),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              const Gap(8),
              Text(
                'نوع نمایش تصویر',
                style: TextStyle(
                  fontFamily: 'mikhak',
                  fontSize: 14,
                  color: myGrey[500],
                ),
              ),
              const Gap(8),
              WidgetRadioGroup(
                activeIconColor: myGreen[500],
                activeDefault: 1,
                deactivateIconColor: myGrey[400],
                direction: Axis.horizontal,
                itemMargin: const EdgeInsets.symmetric(horizontal: 8),
                iconHeight: 30,
                data: [
                  RadioData(iconPath: "svgs/fill.svg", value: BoxFit.fill),
                  RadioData(iconPath: "svgs/cover.svg", value: BoxFit.cover),
                  RadioData(iconPath: "svgs/contain.svg", value: BoxFit.contain),
                  RadioData(iconPath: "svgs/fill_height.svg", value: BoxFit.fitHeight),
                  RadioData(iconPath: "svgs/fill_width.svg", value: BoxFit.fitWidth),
                ],
                iconTye: IconType.svgAsset,
                onRadioClick: (value, index) {
                  _secondImageBoxFit = value;
                  update();
                },
              ),
            ],
          ),
        ),
        barrierColor: Colors.transparent);
  }
}
