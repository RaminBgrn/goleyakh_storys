import 'package:get/get.dart';
import 'package:goleyakh_storys/common/static.dart';
import 'package:goleyakh_storys/settings/models/drop_down_model.dart';
import 'package:path/path.dart';

class DropDownController extends GetxController {
  final List<DropDownModel> _dropDownModels = [];
  List<DropDownModel> get getDorpDownModels => _dropDownModels;

  DropDownModel _dropDownModel = DropDownModel(name: '', path: '');
  DropDownModel get getDropDownModel => _dropDownModel;

  final String _selectedItem = "برند محصول";
  String get getSelectedItem => _selectedItem;

  @override
  void onInit() {
    for (String item in brandsPath) {
      _dropDownModels.add(
        DropDownModel(name: basename(item), path: item),
      );
    }
    update();
    super.onInit();
  }

  void changeDropDownItem(DropDownModel model) {
    _dropDownModel = model;
    update();
  }
}
