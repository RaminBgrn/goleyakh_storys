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
                                'آلمان',
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
                                        '8012',
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
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned.fill(
            right: 10,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 170,
                height: 210,
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
          ),
        ],
      );
    });
  }
}
