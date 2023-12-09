import 'package:flutter/material.dart';
import 'package:goleyakh_storys/preview/screens/story_preview.dart';
import 'package:goleyakh_storys/settings/screens/setting_page.dart';
import 'package:goleyakh_storys/static/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myGrey[700]!,
        title: Text(
          'Goleyakh',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: PageView(children: const [
        SettingPage(),
        StoryPreView(),
      ]),
    );
  }
}
