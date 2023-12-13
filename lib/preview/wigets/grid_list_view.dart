import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/preview/controllers/data_controller.dart';
import 'package:goleyakh_storys/settings/models/size_model.dart';
import 'package:goleyakh_storys/static/colors.dart';

class GridListView extends StatelessWidget {
  final List<SizeModel> model;

  const GridListView({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: model.length > 6 ? 3 : 2,
                childAspectRatio: 3,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: model.length,
              itemBuilder: (_, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.find<DataController>().priceColor(index),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 34,
                          // padding: EdgeInsets.symmetric(horizontal: model[index].size!.length > 1 ? 3 : 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: myRose[300]!,
                            ),
                          ),
                          child:
                              model[index].size!.contains(" ") ? _textWithWithSpace(model[index].size!) : _textWithOutWithSpace(model[index].size!),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: model.length <= 6
                            ? Center(
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: model[index].price!.split(' ')[1],
                                      style: TextStyle(fontFamily: 'estedad', fontSize: 13, color: myGrey[700], fontWeight: FontWeight.w800),
                                    ),
                                    TextSpan(
                                      text: "  ${model[index].price!.split(' ')[0]}",
                                      style: TextStyle(fontFamily: 'estedad', fontSize: 9, color: myGrey[700], fontWeight: FontWeight.w700),
                                    ),
                                  ]),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 5.0, bottom: 4.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        model[index].price!.split(' ')[1],
                                        style: TextStyle(fontFamily: 'estedad', fontSize: 14, color: myGrey[700], fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        model[index].price!.split(' ')[0],
                                        style: TextStyle(fontFamily: 'estedad', fontSize: 8, color: myGrey[700], fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          model.length > 6 ? const SizedBox() : const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }

  Widget _textWithWithSpace(String size) {
    return RichText(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: size.split(' ')[0],
          style: TextStyle(fontFamily: 'estedad', fontSize: 10, color: myGrey[700], fontWeight: FontWeight.w800),
        ),
        TextSpan(
          text: "  ${size.split(' ')[1]}",
          style: TextStyle(fontFamily: 'estedad', fontSize: 10, color: myGrey[700], fontWeight: FontWeight.w700, height: 0.8),
        ),
      ]),
    );
  }

  Widget _textWithOutWithSpace(String size) {
    return Text(
      size,
      style: TextStyle(fontFamily: 'estedad', height: 1.7, fontSize: size.length > 2 ? 16 : 18, color: myGrey[700], fontWeight: FontWeight.w900),
    );
  }
}
