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
    return GetBuilder<DataController>(
      builder: (clr) {
        return Stack(
          children: [
            _background(clr),
            Positioned.fill(
              right: 30,
              top: 40,
              child: Align(
                alignment: Alignment.topRight,
                child: _firstImage(clr),
              ),
            ),
            Positioned.fill(
              right: 8,
              bottom: 8,
              child: Align(
                alignment: Alignment.bottomRight,
                child: _secondImage(clr),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: _data(clr),
            )
          ],
        );
      },
    );
  }

  Widget _data(DataController clr) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 10,
            child: SizedBox(),
          ),
          const Expanded(
            flex: 11,
            child: SizedBox(),
          ),
          Expanded(
            flex: 13,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      flex: 15,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            clr.getProductModel.productName ?? '',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'lalezar',
                              fontSize: 20,
                              color: myGrey[700],
                            ),
                          ),
                          const Gap(4),
                          Container(
                            width: 73,
                            height: 3,
                            color: myGrey[700],
                          ),
                          const Gap(8),
                          Text(
                            clr.getProductModel.productDescription ?? '',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'estedad',
                              color: myGrey[500],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Gap(4),
                          Text(
                            "سایزبندی:",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'lalezar',
                              fontSize: 16,
                              color: myGrey[700],
                            ),
                          ),
                          const Gap(4),
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: clr.getProductModel.productSizes!.length >= 5 ? 5 : clr.getProductModel.productSizes!.length,
                                itemBuilder: (_, index) {
                                  return Container(
                                    width: 50,
                                    height: 26,
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: clr.priceColor(index),
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          height: 29,
                                          width: 29,
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            color: Colors.white,
                                          ),
                                          child: Text(
                                            clr.getProductModel.productSizes![index].size!,
                                            style: TextStyle(
                                                fontFamily: 'estedad',
                                                height: 1.7,
                                                fontSize: clr.getProductModel.productSizes![index].size!.length > 3 ? 10 : 14,
                                                color: myGrey[700],
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 10,
                                        child: Center(
                                          child: Text(
                                            clr.getProductModel.productSizes![index].price!,
                                            style: TextStyle(
                                                fontFamily: 'estedad', height: 1.7, fontSize: 14, color: myGrey[700], fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      )
                                    ]),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondImage(DataController clr) {
    return GestureDetector(
      onTap: () {
        clr.changeSecondImage();
      },
      onLongPress: () {
        clr.changeSecondImageBoxFit();
      },
      child: Container(
        width: 200,
        height: 280,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(
              File(clr.getSecondImage),
            ),
            fit: clr.getSecondImageBoxFit,
          ),
          border: Border.all(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(18),
          color: myGrey[300],
        ),
      ),
    );
  }

  Widget _firstImage(DataController clr) {
    return GestureDetector(
      onTap: () {
        clr.changeFirstImage();
      },
      onLongPress: () {
        clr.changeFirstImageBoxFit();
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          RotationTransition(
            turns: const AlwaysStoppedAnimation(10 / 360),
            child: Container(
              width: 330,
              height: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: const Color.fromARGB(255, 158, 158, 158),
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
            turns: const AlwaysStoppedAnimation(5 / 360),
            child: Container(
              width: 330,
              height: 390,
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
            width: 330,
            height: 390,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: FileImage(
                    File(clr.getFirstImage),
                  ),
                  fit: clr.getFirstImageBoxFit),
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
            child: Stack(
              children: [
                Positioned.fill(
                  top: 10,
                  left: 10,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(0.02),
                      ),
                      child: (clr.getProductModel.brandLogo != null && clr.getProductModel.brandLogo!.isNotEmpty)
                          ? SvgPicture.asset(clr.getProductModel.brandLogo!)
                          : const SizedBox(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _background(DataController clr) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            color: clr.getProductModel.designColor,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'svgs/logo.svg',
                  width: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 4),
                child: Align(
                  alignment: Alignment.topRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'https://',
                          style: TextStyle(
                            fontFamily: 'mons',
                            color: myGrey[200],
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' GOLEYAKH.STORE',
                          style: TextStyle(
                            fontFamily: 'estedad',
                            color: myGrey[100],
                            letterSpacing: 1.3,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
  //   return GetBuilder<DataController>(builder: (clr) {
  //     return Stack(
  //       children: [
  //         Column(
  //           children: [
  //             Expanded(
  //               child: Container(
  //                 color: clr.getProductModel.designColor,
  //                 child: Row(
  //                   children: [
  //                     Expanded(
  //                         flex: 15,
  //                         child: Stack(
  //                           alignment: Alignment.centerRight,
  //                           children: [
  //                             RotationTransition(
  //                               turns: const AlwaysStoppedAnimation(-20 / 360),
  //                               child: Container(
  //                                 width: 220,
  //                                 height: 290,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(28),
  //                                   color: const Color(0xFFD9D9D9),
  //                                   border: Border.all(
  //                                     width: 5,
  //                                     color: Colors.white,
  //                                   ),
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       offset: const Offset(0, 2),
  //                                       color: myGrey[400]!.withOpacity(0.6),
  //                                       blurRadius: 2,
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                             RotationTransition(
  //                               turns: const AlwaysStoppedAnimation(-10 / 360),
  //                               child: Container(
  //                                 width: 220,
  //                                 height: 290,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(28),
  //                                   color: const Color(0xFFD9D9D9),
  //                                   border: Border.all(
  //                                     width: 5,
  //                                     color: Colors.white,
  //                                   ),
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       offset: const Offset(0, 2),
  //                                       color: myGrey[400]!.withOpacity(0.6),
  //                                       blurRadius: 2,
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                             Container(
  //                               width: 620,
  //                               height: 690,
  //                               decoration: BoxDecoration(
  //                                 image: DecorationImage(image: FileImage(File(clr.getFirstImage))),
  //                                 borderRadius: BorderRadius.circular(28),
  //                                 color: const Color(0xFFD9D9D9),
  //                                 border: Border.all(
  //                                   width: 5,
  //                                   color: Colors.white,
  //                                 ),
  //                                 boxShadow: [
  //                                   BoxShadow(
  //                                     offset: const Offset(0, 2),
  //                                     color: myGrey[400]!.withOpacity(0.6),
  //                                     blurRadius: 2,
  //                                   ),
  //                                 ],
  //                               ),
  //                               child: Stack(
  //                                 children: [
  //                                   Container(
  //                                     width: 90,
  //                                     height: 40,
  //                                     decoration: BoxDecoration(
  //                                       borderRadius: BorderRadius.circular(12),
  //                                       color: Colors.amber,
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                               // child: clr.getSecondImage.isNotEmpty
  //                               //     ? GestureDetector(
  //                               //         onTap: () => clr.changeFirstImage(),
  //                               //         onLongPress: () => clr.changeFirstImageBoxFit(),
  //                               //         child: ClipRRect(
  //                               //             borderRadius: BorderRadius.circular(22),
  //                               //             child: Image.file(
  //                               //               File(clr.getFirstImage),
  //                               //               fit: clr.getFirstImageBoxFit,
  //                               //             )))
  //                               //     : const SizedBox(),
  //                             ),
  //                           ],
  //                         )),
  //                     Expanded(
  //                       flex: 9,
  //                       child: Column(
  //                         children: [
  //                           const Gap(15),
  //                           const Gap(5),
  //                           Container(
  //                             padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
  //                             color: Colors.white,
  //                             child: Text(
  //                               clr.getProductModel.productCountry ?? 'کشور',
  //                               style: TextStyle(
  //                                 fontFamily: 'estedad',
  //                                 fontWeight: FontWeight.w600,
  //                                 color: clr.getProductModel.designColor,
  //                                 fontSize: 18,
  //                               ),
  //                             ),
  //                           ),
  //                           const Gap(10),
  //                           const Text(
  //                             'شعبه جامی',
  //                             style: TextStyle(
  //                               fontFamily: 'mikhak',
  //                               fontWeight: FontWeight.w800,
  //                               color: Colors.white,
  //                               fontSize: 18,
  //                             ),
  //                           ),
  //                           const Gap(10),
  //                           (clr.getProductModel.productSKU != null && clr.getProductModel.productSKU!.isNotEmpty)
  //                               ? Align(
  //                                   alignment: Alignment.centerRight,
  //                                   child: Container(
  //                                       height: 47,
  //                                       width: 100,
  //                                       padding: const EdgeInsets.only(
  //                                         left: 10,
  //                                         right: 10,
  //                                         top: 3,
  //                                       ),
  //                                       color: Colors.white,
  //                                       child: Stack(
  //                                         children: [
  //                                           Align(
  //                                             alignment: Alignment.topRight,
  //                                             child: Text(
  //                                               'کد محصول',
  //                                               style: TextStyle(
  //                                                 fontFamily: 'estedad',
  //                                                 fontWeight: FontWeight.w400,
  //                                                 color: clr.getProductModel.designColor,
  //                                                 fontSize: 13,
  //                                               ),
  //                                             ),
  //                                           ),
  //                                           Align(
  //                                             alignment: Alignment.bottomLeft,
  //                                             child: Text(
  //                                               clr.getProductModel.productSKU ?? '0',
  //                                               style: TextStyle(
  //                                                 fontFamily: 'estedad',
  //                                                 fontWeight: FontWeight.w900,
  //                                                 color: clr.getProductModel.designColor,
  //                                                 fontSize: 18,
  //                                               ),
  //                                             ),
  //                                           ),
  //                                         ],
  //                                       )),
  //                                 )
  //                               : const SizedBox(),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             Expanded(
  //               child: SizedBox(
  //                 width: double.infinity,
  //                 child: Column(
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Expanded(
  //                           flex: 16,
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.end,
  //                             children: [
  //                               Padding(
  //                                 padding: const EdgeInsets.only(left: 4.0, top: 8.0),
  //                                 child: RichText(
  //                                   text: TextSpan(
  //                                     children: [
  //                                       TextSpan(
  //                                         text: 'https://',
  //                                         style: TextStyle(
  //                                           fontFamily: 'mons',
  //                                           fontSize: 13,
  //                                           color: myGrey[500],
  //                                           fontWeight: FontWeight.w300,
  //                                         ),
  //                                       ),
  //                                       TextSpan(
  //                                         text: " GOLEYAKH.STORE",
  //                                         style: TextStyle(
  //                                           color: myGrey[700],
  //                                           fontFamily: 'estedad',
  //                                           fontSize: 17,
  //                                           fontWeight: FontWeight.w500,
  //                                           letterSpacing: 1,
  //                                         ),
  //                                       )
  //                                     ],
  //                                   ),
  //                                 ),
  //                               ),
  //                               const Gap(8),
  //                               Text(
  //                                 clr.getProductModel.productName ?? 'نام',
  //                                 style: TextStyle(
  //                                   fontFamily: 'lalezar',
  //                                   fontSize: 24,
  //                                   color: myGrey[700],
  //                                 ),
  //                               ),
  //                               const Gap(8),
  //                               Container(
  //                                 width: 80,
  //                                 height: 3,
  //                                 color: myGrey[600],
  //                               ),
  //                               const Gap(16),
  //                               Text(
  //                                 clr.getProductModel.productDescription ?? 'توضیح',
  //                                 textDirection: TextDirection.rtl,
  //                                 style: TextStyle(
  //                                   fontFamily: 'estedad',
  //                                   color: myGrey[600],
  //                                   fontWeight: FontWeight.w600,
  //                                   fontSize: 14,
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                         const Expanded(
  //                           flex: 13,
  //                           child: SizedBox(),
  //                         ),
  //                       ],
  //                     ),
  //                     const Gap(8),
  //                     Padding(
  //                       padding: const EdgeInsets.only(left: 60.0),
  //                       child: Text(
  //                         'سایزبندی:',
  //                         textDirection: TextDirection.rtl,
  //                         style: TextStyle(
  //                           fontFamily: 'lalezar',
  //                           fontSize: 24,
  //                           color: myGrey[700],
  //                         ),
  //                       ),
  //                     ),
  //                     // SizeHorizontalListWidget(sizeModels: clr.getProductModel.productSizes!),
  //                     GridListView(
  //                       model: clr.getProductModel.productSizes!,
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         Positioned.fill(
  //           top: 50,
  //           right: 5,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Container(
  //               width: 160,
  //               height: 220,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(28),
  //                 color: const Color(0xFFD9D9D9),
  //                 border: Border.all(
  //                   width: 5,
  //                   color: Colors.white,
  //                 ),
  //                 boxShadow: [
  //                   BoxShadow(
  //                     offset: const Offset(0, 2),
  //                     color: myGrey[400]!.withOpacity(0.6),
  //                     blurRadius: 2,
  //                   ),
  //                 ],
  //               ),
  //               child: clr.getSecondImage.isNotEmpty
  //                   ? GestureDetector(
  //                       onTap: () {
  //                         clr.changeSecondImage();
  //                       },
  //                       child: ClipRRect(
  //                         borderRadius: BorderRadius.circular(22),
  //                         child: Image.file(
  //                           File(clr.getSecondImage),
  //                           fit: clr.getFirstImageBoxFit,
  //                         ),
  //                       ),
  //                     )
  //                   : const SizedBox(),
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Align(
  //             alignment: Alignment.topLeft,
  //             child: SvgPicture.asset(
  //               'svgs/logo.svg',
  //               width: 50,
  //             ),
  //           ),
  //         ),
  //       ],
  //     );
  //   });
  // }
}
