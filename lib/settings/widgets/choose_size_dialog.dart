import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/size_controller.dart';
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
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      controller: Get.find<SizeController>().getSizeTextEditingController,
                      decoration: const InputDecoration(
                        label: Text('سایز'),
                      ),
                    ),
                  ),
                  const Gap(8),
                  const Center(
                    child: Text('اختیاری'),
                  ),

                  //child: Text(intl.NumberFormat.currency(name: ' ', decimalDigits: 0).format(3580000)),

                  const Gap(16),
                  _meter(
                      title: 'متن قسمت متر شده',
                      value: "مقدار",
                      titleController: Get.find<SizeController>().getProductMeterTitleNumOneTextEditingController,
                      valueController: Get.find<SizeController>().getProductMeterValueNumOneTextEditingController),
                  const Gap(10),
                  _meter(
                    title: 'متن قسمت متر شده',
                    value: "مقدار",
                    titleController: Get.find<SizeController>().getProductMeterTitleNumTowTextEditingController,
                    valueController: Get.find<SizeController>().getProductMeterValueNumTowTextEditingController,
                  ),
                  const Gap(10),
                  _meter(
                    title: 'متن قسمت متر شده',
                    value: "مقدار",
                    titleController: Get.find<SizeController>().getProductTitleNumThreeTextEditingController,
                    valueController: Get.find<SizeController>().getProductValueNumThreeTextEditingController,
                  ),
                  const Gap(16),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      controller: Get.find<SizeController>().getPriceTextEditingController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [Get.find<SizeController>().getFormatter],
                      decoration: const InputDecoration(
                        label: Text('قیمت'),
                      ),
                    ),
                  ),
                  const Gap(8),
                  const Center(
                    child: Text('اختیاری'),
                  ),
                  const Gap(8),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      controller: Get.find<SizeController>().getDiscountPriceTextEditingController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [Get.find<SizeController>().getFormatter],
                      decoration: const InputDecoration(
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

  static Widget _meter(
      {required String title,
      required String value,
      required TextEditingController titleController,
      required TextEditingController valueController}) {
    return Row(
      children: [
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              controller: valueController,
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
              controller: titleController,
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
