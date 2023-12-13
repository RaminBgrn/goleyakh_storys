import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/common/main_controller.dart';
import 'package:goleyakh_storys/posts/screens/post_screen.dart';
import 'package:goleyakh_storys/preview/screens/story_preview.dart';
import 'package:goleyakh_storys/settings/screens/setting_page.dart';
import 'package:goleyakh_storys/static/colors.dart';
import 'package:goleyakh_storys/water_mark/screens/water_mark_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<MainController>(builder: (clr) {
        return Scaffold(
          bottomNavigationBar: SalomonBottomBar(
            backgroundColor: myGrey[800],
            selectedItemColor: myGreen[200],
            currentIndex: clr.getCurrentIndex,
            onTap: (index) {
              clr.changePage(index);
            },
            items: [
              bottomItems('svgs/setting.svg', 'تنظیمات'),
              bottomItems('svgs/story.svg', 'استوری'),
              bottomItems('svgs/post.svg', 'پست'),
              bottomItems('svgs/image.svg', 'واترمارک'),
            ],
          ),
          body: PageView(physics: const NeverScrollableScrollPhysics(), controller: clr.getMainPageController, children: const [
            SettingPage(),
            StoryPreView(),
            PostScreen(),
            WaterMarkScreen(),
          ]),
        );
      }),
    );
  }

  SalomonBottomBarItem bottomItems(String icon, String title) {
    return SalomonBottomBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          myGrey[300]!,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'mikhak',
          color: myGrey[300],
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
