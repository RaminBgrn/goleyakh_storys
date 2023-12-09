import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goleyakh_storys/static/colors.dart';

class ImageItem extends StatelessWidget {
  final String image;
  final VoidCallback onRemove;
  const ImageItem({
    required this.image,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: myGrey[700],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.file(
                  File(image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: onRemove,
                  child: SvgPicture.asset(
                    'svgs/close.svg',
                    colorFilter: ColorFilter.mode(
                      myRed[500]!,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
