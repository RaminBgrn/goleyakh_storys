import 'package:get/get.dart';
import 'package:goleyakh_storys/settings/models/image_model.dart';

class ImageController extends GetxController {
  final List<ImageModel> _image = [];
  List<ImageModel> get getImageSelected => _image;
}
