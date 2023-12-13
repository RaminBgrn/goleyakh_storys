import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goleyakh_storys/static/colors.dart';

class ImageWidget extends StatefulWidget {
  final String imagePath;
  const ImageWidget({required this.imagePath, super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  late int index;
  BoxFit _fit = BoxFit.contain;
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onImageTap();
      },
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: _fit,
            image: FileImage(
              File(widget.imagePath),
            ),
          ),
          border: Border.all(
            width: 4,
            color: myGrey[900]!,
          ),
        ),
      ),
    );
  }

  void onImageTap() {
    if (index >= 5) index = 0;
    List<BoxFit> box = [
      BoxFit.fill,
      BoxFit.cover,
      BoxFit.contain,
      BoxFit.fitHeight,
      BoxFit.fitWidth,
    ];
    setState(() {
      _fit = box[index];
    });
    index++;
  }
}
