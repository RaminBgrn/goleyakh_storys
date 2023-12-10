import 'package:flutter/material.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';
import 'package:goleyakh_storys/static/colors.dart';

class SizeItem extends StatelessWidget {
  final SizeModel model;
  const SizeItem({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: myGrey[700],
      ),
    );
  }
}
