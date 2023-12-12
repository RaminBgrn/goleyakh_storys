import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:goleyakh_storys/common/static.dart';
import 'package:goleyakh_storys/settings/controllers/drop_down_controller.dart';
import 'package:goleyakh_storys/settings/models/drop_down_model.dart';
import 'package:goleyakh_storys/static/colors.dart';
import 'package:path/path.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropDownController>(builder: (clr) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<DropDownModel>(
            isExpanded: true,
            hint: (clr.getDropDownModel.path.isNotEmpty)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: myGrey[900]!.withOpacity(0.4),
                        ),
                        child: SvgPicture.asset(
                          clr.getDropDownModel.path,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        clr.getDropDownModel.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'mikhak',
                          color: myGrey[200]!,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                : Text(
                    clr.getSelectedItem,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'mikhak',
                      color: myGrey[200]!,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
            items: brandsPath
                .map((String item) => DropdownMenuItem<DropDownModel>(
                      value: DropDownModel(path: item, name: basename(item)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            item,
                          ),
                          const Gap(10),
                          Text(
                            basename(item),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ))
                .toList(),
            onChanged: (v) {
              clr.changeDropDownItem(v!);
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: myGrey[400]!,
                ),
                color: myGrey[600],
              ),
              elevation: 2,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: MediaQuery.sizeOf(context).width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: myGrey[600],
              ),
              offset: const Offset(2, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),
      );
    });
  }
}
