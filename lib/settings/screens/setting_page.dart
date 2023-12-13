import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/controllers/color_controller.dart';
import 'package:goleyakh_storys/settings/controllers/image_controller.dart';
import 'package:goleyakh_storys/settings/controllers/setting_controller.dart';
import 'package:goleyakh_storys/settings/controllers/size_controller.dart';
import 'package:goleyakh_storys/settings/widgets/choose_size_dialog.dart';
import 'package:goleyakh_storys/settings/widgets/drop_down_widget.dart';
import 'package:goleyakh_storys/settings/widgets/image_item.dart';
import 'package:goleyakh_storys/settings/widgets/size_items.dart';
import 'package:goleyakh_storys/static/colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myGrey[800],
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Directionality(
            //     textDirection: TextDirection.rtl,
            //     child: TextField(
            //       controller: Get.find<SettingController>().getHeaderDescriptionController,
            //       textDirection: TextDirection.rtl,
            //       decoration: const InputDecoration(
            //         labelText: "توضیحات قسمت هدر",
            //         alignLabelWithHint: true,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            const DropDownWidget(),
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
                          controller: Get.find<SettingController>().getProductSKUController,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GetBuilder<ColorController>(
                  builder: (clr) {
                    return Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: clr.getBackgroundColor,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 1,
                          color: myGrey[400]!,
                        ),
                      ),
                    );
                  },
                ),
                const Gap(18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: myGreen[900]!.withOpacity(0.3),
                    side: BorderSide(
                      width: 2,
                      color: myGreen[600]!,
                    ),
                  ),
                  onPressed: () {
                    Get.find<ColorController>().chooseColor();
                  },
                  child: Text(
                    'رنگ پس زمینه',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                )
              ],
            ),
            const Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'تصاویر محصول',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
            const Gap(8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: myGrey[600]!.withOpacity(0.5),
                    ),
                    child: GetBuilder<ImageController>(
                      builder: (clr) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: clr.getImageSelected.length + 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            if (clr.getImageSelected.length == index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.find<ImageController>().chooseImage();
                                },
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  margin: const EdgeInsets.only(
                                    top: 70,
                                    bottom: 70,
                                    left: 8,
                                    right: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: myGreen[900]!.withOpacity(0.3),
                                    border: Border.all(
                                      width: 2,
                                      color: myGreen[600]!,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: myGrey[300]!,
                                  ),
                                ),
                              );
                            }
                            return ImageItem(
                              onRemove: () => clr.removeImage(index),
                              image: clr.getImageSelected[index].imagePath,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'سایز بندی محصول',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
            const Gap(8),
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: myGrey[600]!.withOpacity(0.5),
              ),
              child: GetBuilder<SizeController>(
                builder: (clr) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: clr.getSizeModel.length + 1,
                    itemBuilder: (context, index) {
                      return (clr.getSizeModel.length == index || clr.getSizeModel.isEmpty)
                          ? GestureDetector(
                              onTap: () {
                                MyCustomDialogs.chooseSize();
                              },
                              child: Container(
                                width: 60,
                                height: 40,
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: myGreen[900]!.withOpacity(0.3),
                                  border: Border.all(
                                    width: 2,
                                    color: myGreen[600]!,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: myGrey[300]!,
                                ),
                              ),
                            )
                          : SizeItem(
                              model: clr.getSizeModel[index],
                            );
                    },
                  );
                },
              ),
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }
}
