import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/preview/controllers/data_controller.dart';
import 'package:goleyakh_storys/static/colors.dart';

class StoryPreView extends StatelessWidget {
  const StoryPreView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataController>(builder: (clr) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                'svgs/flower.svg',
                width: 100,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: clr.getProductModel.designColor,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 15,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              RotationTransition(
                                turns: const AlwaysStoppedAnimation(-20 / 360),
                                child: Container(
                                  width: 220,
                                  height: 290,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: const Color(0xFFD9D9D9),
                                    border: Border.all(
                                      width: 5,
                                      color: Colors.white,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 2),
                                        color: myGrey[400]!.withOpacity(0.6),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              RotationTransition(
                                turns: const AlwaysStoppedAnimation(-10 / 360),
                                child: Container(
                                  width: 220,
                                  height: 290,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: const Color(0xFFD9D9D9),
                                    border: Border.all(
                                      width: 5,
                                      color: Colors.white,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 2),
                                        color: myGrey[400]!.withOpacity(0.6),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 220,
                                height: 290,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: const Color(0xFFD9D9D9),
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.white,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 2),
                                      color: myGrey[400]!.withOpacity(0.6),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: clr.getSecondImage.isNotEmpty
                                    ? GestureDetector(
                                        onTap: () => clr.changeFirstImage(),
                                        onLongPress: () => clr.changeFirstImageBoxFit(),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(22),
                                            child: Image.file(
                                              File(clr.getFirstImage),
                                              fit: clr.getFirstImageBoxFit,
                                            )))
                                    : const SizedBox(),
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 9,
                        child: Column(
                          children: [
                            const Gap(15),
                            clr.getProductModel.brandLogo != null && clr.getProductModel.brandLogo!.isNotEmpty
                                ? SvgPicture.asset(
                                    clr.getProductModel.brandLogo!,
                                    width: 120,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  )
                                : Text(
                                    'برند انتخاب نشده',
                                    style: TextStyle(
                                      fontFamily: 'mikhak',
                                      fontSize: 18,
                                      color: myGrey[500],
                                    ),
                                  ),
                            const Gap(5),
                            Container(
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
                              color: Colors.white,
                              child: Text(
                                clr.getProductModel.productCountry ?? 'کشور',
                                style: TextStyle(
                                  fontFamily: 'estedad',
                                  fontWeight: FontWeight.w600,
                                  color: clr.getProductModel.designColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const Gap(10),
                            const Text(
                              'شعبه جامی',
                              style: TextStyle(
                                fontFamily: 'mikhak',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const Gap(10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 47,
                                width: 100,
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 3,
                                ),
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        'کد محصول',
                                        style: TextStyle(
                                          fontFamily: 'estedad',
                                          fontWeight: FontWeight.w400,
                                          color: clr.getProductModel.designColor,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        clr.getProductModel.productSKU ?? '0',
                                        style: TextStyle(
                                          fontFamily: 'estedad',
                                          fontWeight: FontWeight.w900,
                                          color: clr.getProductModel.designColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0, top: 8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'https://',
                                          style: TextStyle(
                                            fontFamily: 'mons',
                                            fontSize: 13,
                                            color: myGrey[500],
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " GOLEYAKH.STORE",
                                          style: TextStyle(
                                            color: myGrey[700],
                                            fontFamily: 'estedad',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Gap(8),
                                Text(
                                  clr.getProductModel.productName ?? 'نام',
                                  style: TextStyle(
                                    fontFamily: 'lalezar',
                                    fontSize: 24,
                                    color: myGrey[700],
                                  ),
                                ),
                                const Gap(8),
                                Container(
                                  width: 80,
                                  height: 3,
                                  color: myGrey[600],
                                ),
                                const Gap(16),
                                Text(
                                  clr.getProductModel.productDescription ?? 'توضیح',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'estedad',
                                    color: myGrey[600],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 13,
                            child: SizedBox(),
                          ),
                        ],
                      ),
                      const Gap(8),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Text(
                          'سایزبندی:',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'lalezar',
                            fontSize: 24,
                            color: myGrey[700],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            top: 50,
            right: 5,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: const Color(0xFFD9D9D9),
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      color: myGrey[400]!.withOpacity(0.6),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: clr.getSecondImage.isNotEmpty
                    ? GestureDetector(
                        onTap: () {
                          clr.changeSecondImage();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.file(
                            File(clr.getSecondImage),
                            fit: clr.getFirstImageBoxFit,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
            ),
          ),
        ],
      );
    });
  }
}
