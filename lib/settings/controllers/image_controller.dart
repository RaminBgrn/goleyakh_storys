import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/models/image_model.dart';
import 'package:goleyakh_storys/static/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ImageController extends GetxController {
  final List<ImageModel> _image = [];
  List<ImageModel> get getImageSelected => _image;
  late ImagePicker picker;

  @override
  void onInit() {
    picker = ImagePicker();
    super.onInit();
  }

  void chooseImage() async {
    Get.bottomSheet(
      Container(
        width: 400,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                _takePhotoFromCamera();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: myGreen[900]!.withOpacity(0.2),
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SvgPicture.asset(
                    'svgs/camera.svg',
                    width: 80,
                  ),
                  const Gap(8),
                  const Text('دوربین')
                ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                _chooseImageFromGallery();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: myGreen[900]!.withOpacity(0.2),
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SvgPicture.asset(
                    'svgs/gallery.svg',
                    width: 80,
                  ),
                  const Gap(8),
                  const Text('گالری')
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void removeImage(int index) {
    _image.removeAt(index);
    update();
  }

  void _takePhotoFromCamera() async {
    Get.back();
    XFile? cameraPhoto = await picker.pickImage(source: ImageSource.camera);
    if (cameraPhoto == null) return;
    _image.add(ImageModel(title: basename(cameraPhoto.path), imagePath: cameraPhoto.path));
    update();
  }

  void _chooseImageFromGallery() async {
    Get.back();
    XFile? galleryImage = await picker.pickImage(source: ImageSource.gallery);
    if (galleryImage == null) return;
    _image.add(ImageModel(title: basename(galleryImage.path), imagePath: galleryImage.path));
    update();
  }
}
