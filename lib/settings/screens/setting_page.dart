import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/common/static.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/models/drop_down_model.dart';
import 'package:goleyakh_storys/settings/widgets/image_item.dart';
import 'package:goleyakh_storys/static/colors.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: myGreen[50]!.withOpacity(0.5),
                    ),
                    child: GetBuilder<ImageController>(
                      builder: (clr) {
                        return clr.getImageSelected.isEmpty
                            ? const Center(child: Text('عکس‌های محصول'))
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: 8, // clr.getImageSelected.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return ImageItem(
                                    image: clr.getImageSelected[index].imagePath,
                                  );
                                },
                              );
                      },
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.only(
                      right: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: myGreen[300]!.withOpacity(0.2),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
