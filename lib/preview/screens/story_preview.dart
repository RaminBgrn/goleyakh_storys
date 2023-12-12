import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/preview/controllers/data_controller.dart';
import 'package:goleyakh_storys/static/colors.dart';

class StoryPreView extends StatelessWidget {
  const StoryPreView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataController>(builder: (clr) {
      return Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Row(
                children: [
                  Column(
                    children: [
                      clr.getProductModel.brandLogo != null && clr.getProductModel.brandLogo!.isNotEmpty
                          ? SvgPicture.asset(clr.getProductModel.brandLogo!)
                          : Text(
                              'برند انتخاب نشده',
                              style: TextStyle(
                                fontFamily: 'mikhak',
                                fontSize: 18,
                                color: myGrey[500],
                              ),
                            ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        color: Colors.white,
                        child: Text('آلمان'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      );
    });
  }
}
