import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/static/colors.dart';

class MyCustomDialogs {
  /// choose product size
  static void chooseSize() {
    Get.dialog(
        Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: Container(
            height: 610,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: myGrey[700],
              borderRadius: BorderRadius.circular(18),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          'svgs/close.svg',
                          width: 32,
                          colorFilter: ColorFilter.mode(
                            myRed[800]!,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(12),
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('سایز'),
                      ),
                    ),
                  ),
                  const Gap(8),
                  const Center(
                    child: Text('اختیاری'),
                  ),
                  const Gap(8),
                  _meter(title: 'متن قسمت متر شده', value: "مقدار"),
                  const Gap(4),
                  _meter(title: 'متن قسمت متر شده', value: "مقدار"),
                  const Gap(4),
                  _meter(title: 'متن قسمت متر شده', value: "مقدار"),
                  const Gap(8),
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('قیمت'),
                      ),
                    ),
                  ),
                  const Gap(8),
                  const Center(
                    child: Text('اختیاری'),
                  ),
                  const Gap(8),
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('قیمت با تخفیف'),
                      ),
                    ),
                  ),
                  const Gap(8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: myGreen[900]!.withOpacity(0.3),
                      side: BorderSide(
                        width: 2,
                        color: myGreen[600]!,
                      ),
                    ),
                    onPressed: () {
                      /// TODO create save logic
                      Get.back();
                    },
                    child: Text(
                      'ذخیره',
                      style: TextStyle(fontSize: 13, color: myGrey[300]!),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: false);
  }

  static Widget _meter({required String title, required String value}) {
    return Row(
      children: [
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              decoration: InputDecoration(
                label: Text(value),
              ),
            ),
          ),
        ),
        const Gap(4),
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              decoration: InputDecoration(
                label: Text(title),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
