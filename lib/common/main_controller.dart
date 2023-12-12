import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';

class MainController extends GetxController {
  final PageController _mainPageController = PageController();
  PageController get getMainPageController => _mainPageController;

  late int _currentIndex;
  int get getCurrentIndex => _currentIndex;

  @override
  void onInit() {
    _currentIndex = 0;
    super.onInit();
  }

  void changePage(int index) {
    _currentIndex = index;
    _mainPageController.animateToPage(index,
        duration: const Duration(
          milliseconds: 200,
        ),
        curve: Curves.easeIn);
    Get.find<SettingController>().setDataToModel();
    update();
  }
}
