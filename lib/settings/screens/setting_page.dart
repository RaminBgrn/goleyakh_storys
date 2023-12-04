import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/common/static.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/models/drop_down_model.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: Get.find<SettingController>().getProductTitleController,
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                    labelText: "نام محصول",
                    alignLabelWithHint: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: Get.find<SettingController>().getHeaderDescriptionController,
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                    labelText: "توضیحات قسمت هدر",
                    alignLabelWithHint: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: Get.find<SettingController>().getProductDescriptionController,
                  textDirection: TextDirection.rtl,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: "توضیحات قسمت محصول",
                    alignLabelWithHint: true,
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: CustomDropdown<DropDownModel>.search(
                hintText: 'برند',
                items: DropDownModel.parsData(brandsPath),
                searchHintText: "جستجو",
                excludeSelected: false,
                onChanged: (value) {},
                listItemBuilder: (context, value) {
                  return SizedBox(
                    height: 80,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                      Text(value.name),
                      SvgPicture.asset(
                        value.path,
                        width: 80,
                      ),
                    ]),
                  );
                },
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          controller: Get.find<SettingController>().getCountryMadeProductController,
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            labelText: "کد محصول",
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        controller: Get.find<SettingController>().getCountryMadeProductController,
                        textDirection: TextDirection.rtl,
                        decoration: const InputDecoration(
                          labelText: "کشور مبدا",
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                // Expanded(child: Image.)
              ],
            )
          ],
        ),
      ),
    );
  }
}
