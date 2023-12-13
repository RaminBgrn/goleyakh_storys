import 'package:flutter/material.dart';
import 'package:goleyakh_storys/preview/utils.dart';
import 'package:goleyakh_storys/preview/wigets/horizontal_list_item.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';

class SizeHorizontalListWidget extends StatelessWidget {
  final List<SizeModel> sizeModels;
  const SizeHorizontalListWidget({required this.sizeModels, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: changeItemHeight(sizeModels[0]),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: sizeModels.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return HorizontalListItem(model: sizeModels[index]);
          }),
    );
  }
}
