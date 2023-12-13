import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';
import 'package:goleyakh_storys/static/colors.dart';

class HorizontalListItem extends StatelessWidget {
  final SizeModel model;
  const HorizontalListItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: model.size!.length > 5 ? 60 : 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: myGreen[600]!),
        color: myGreen[300]!.withOpacity(0.2),
      ),
      child: Column(children: [
        Container(
          height: 30,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            border: Border.all(width: 1, color: myRose[200]!),
          ),
          child: Text(
            model.size ?? '',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'estedad',
              fontWeight: FontWeight.w900,
              color: myGrey[800],
              fontSize: model.size!.length > 5 ? 10 : 18,
            ),
          ),
        ),
        const Gap(4),
        (model.valueOne != null && model.valueOne!.isNotEmpty)
            ? Container(
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(width: 1, color: myRose[200]!),
                ),
                child: Text(
                  model.valueOne ?? '',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'estedad',
                    fontWeight: FontWeight.w900,
                    color: myGrey[800],
                    fontSize: model.size!.length > 5 ? 10 : 18,
                  ),
                ),
              )
            : const SizedBox(),
        (model.valueTwo != null && model.valueTwo!.isNotEmpty)
            ? Container(
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(width: 1, color: myRose[200]!),
                ),
                child: Text(
                  model.valueTwo ?? '',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'estedad',
                    fontWeight: FontWeight.w900,
                    color: myGrey[800],
                    fontSize: model.size!.length > 5 ? 10 : 18,
                  ),
                ),
              )
            : const SizedBox(),
        (model.valueThree != null && model.valueThree!.isNotEmpty)
            ? Container(
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(width: 1, color: myRose[200]!),
                ),
                child: Text(
                  model.valueThree ?? '',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'estedad',
                    fontWeight: FontWeight.w900,
                    color: myGrey[800],
                    fontSize: model.size!.length > 5 ? 10 : 18,
                  ),
                ),
              )
            : const SizedBox(),
      ]),
    );
  }
}
