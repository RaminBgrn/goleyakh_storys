import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goleyakh_storys/posts/widgets/image_widget.dart';
import 'package:goleyakh_storys/posts/widgets/post_background.dart';
import 'package:goleyakh_storys/static/colors.dart';

class PostWidget extends StatelessWidget {
  final String imagePath;
  const PostWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.white,
      child: Stack(children: [
        const PostBackground(),
        Align(
            alignment: Alignment.center,
            child: ImageWidget(
              imagePath: imagePath,
            )),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 45,
            height: 60,
            color: myGrey[600]!,
            margin: const EdgeInsets.only(right: 20, bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SvgPicture.asset('svgs/color_logo.svg'),
          ),
        )
      ]),
    );
  }
}
