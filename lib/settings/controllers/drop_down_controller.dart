import 'package:get/get.dart';
import 'package:goleyakh_storys/common/static.dart';
import 'package:goleyakh_storys/settings/models/drop_down_model.dart';
import 'package:path/path.dart';

class DropDownController extends GetxController {
  List<DropDownModel> _dropDownModel = [];
  List<DropDownModel> get getDorpDownModel => _dropDownModel;

  @override
  void onInit() {
    for (String item in brandsPath) {
      _dropDownModel.add(
        DropDownModel(name: basename(item), path: item),
      );
    }
    update();
    super.onInit();
  }
}
