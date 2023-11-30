import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:path/path.dart';

class DropDownModel with CustomDropdownListFilter {
  String name;
  String path;

  DropDownModel({
    required this.name,
    required this.path,
  });

  static List<DropDownModel> parsData(List<String> data) {
    List<DropDownModel> temp = [];
    for (int i = 0; i < data.length; i++) {
      temp.add(DropDownModel(name: basename(data[i]), path: data[i]));
    }
    return temp;
  }

  @override
  bool filter(String query) {
    return name.toLowerCase().contains(query.toLowerCase());
  }
}
