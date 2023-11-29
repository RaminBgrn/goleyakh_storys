import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/common/base_controller.dart';
import 'package:goleyakh_storys/common/theme_manager.dart';
import 'package:goleyakh_storys/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: BaseController(),
      theme: ThemeManager.getTheme,
      home: const Home(),
    );
  }
}
