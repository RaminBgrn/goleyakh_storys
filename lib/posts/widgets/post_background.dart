import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/posts/controllers/post_controller.dart';
import 'package:goleyakh_storys/static/colors.dart';

class PostBackground extends StatelessWidget {
  const PostBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(builder: (clr) {
      return Padding(
        padding: const EdgeInsets.all(14.0),
        child: SizedBox(
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Container(
                width: 90,
                height: 90,
                alignment: Alignment.topCenter,
                color: const Color(0xFFededed),
                child: SvgPicture.asset(
                  clr.getProductModel.brandLogo!,
                  width: 80,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Text(
                    'فروش در وب سایت و اینستاگرام',
                    style: TextStyle(
                      fontFamily: 'mikhak',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: myGrey[500]!,
                    ),
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 60.0, top: 4),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'https://',
                            style: TextStyle(
                              fontFamily: 'mons',
                              color: myGrey[500],
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' GOLEYAKH.STORE',
                            style: TextStyle(
                              fontFamily: 'estedad',
                              color: myGrey[500],
                              letterSpacing: 1.3,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                left: 40,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(
                    'svgs/dots.svg',
                    width: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
