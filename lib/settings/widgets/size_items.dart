import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
      height: 100,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: myGrey[600],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(textDirection: TextDirection.rtl, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.only(top: 3),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: myGreen[900]!.withOpacity(0.2),
                  border: Border.all(
                    width: 1,
                    color: myGreen[300]!,
                  ),
                ),
                child: Text(
                  model.size ?? "-",
                  style: const TextStyle(
                    fontFamily: 'mikhak',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${model.titleOne} : ${model.valueOne}"),
                Text("${model.titleTwo} : ${model.valueTwo}"),
                Text("${model.titleThree} : ${model.valueThree}"),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${model.price}'),
                Text('${model.discounted} (تخفیف)'),
              ],
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'svgs/close.svg',
                colorFilter: ColorFilter.mode(
                  myRed[400]!,
                  BlendMode.srcIn,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
