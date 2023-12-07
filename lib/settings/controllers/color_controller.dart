import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/static/colors.dart';

class ColorController extends GetxController {
  Color _selectedColor = myRose[200]!;
  Color get getBackgroundColor => _selectedColor;

  void chooseColor() {
    Get.dialog(Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        height: MediaQuery.sizeOf(Get.context!).height / 1.5,
        child: ColorPicker(
          enableOpacity: true,
          enableShadesSelection: true,
          pickersEnabled: const <ColorPickerType, bool>{
            ColorPickerType.custom: false,
            ColorPickerType.bw: false,
            ColorPickerType.wheel: true,
            ColorPickerType.primary: false,
            ColorPickerType.accent: false,
          },
          actionButtons: const ColorPickerActionButtons(okButton: true, closeButton: true),
          wheelDiameter: 230,
          wheelWidth: 18,
          wheelHasBorder: true,
          onColorChangeEnd: (color) {
            _selectedColor = color;
            update();
          },
          onColorChanged: (color) {},
        ),
      ),
    ));
  }
}
