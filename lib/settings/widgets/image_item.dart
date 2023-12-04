import 'dart:io';

import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String image;
  const ImageItem({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(File(image)),
      ),
    );
  }
}
