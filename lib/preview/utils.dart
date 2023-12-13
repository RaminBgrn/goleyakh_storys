import 'package:goleyakh_storys/settings/models/size_model.dart';

double changeItemHeight(SizeModel model) {
  if ((model.titleOne != null && model.titleOne!.isNotEmpty) &&
      (model.titleTwo != null && model.titleTwo!.isNotEmpty) &&
      (model.titleThree != null && model.titleThree!.isNotEmpty)) return 140;
  if ((model.titleOne != null && model.titleOne!.isNotEmpty) && (model.titleTwo != null && model.titleTwo!.isNotEmpty)) return 108;
  return 75;
}
