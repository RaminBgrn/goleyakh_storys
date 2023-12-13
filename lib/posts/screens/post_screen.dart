import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goleyakh_storys/posts/controllers/post_controller.dart';
import 'package:goleyakh_storys/posts/widgets/post_widget.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(builder: (clr) {
      return ListView.builder(
        itemCount: clr.getProductModel.productImages!.length,
        itemBuilder: (_, index) {
          return PostWidget(
            imagePath: clr.getProductModel.productImages![index].imagePath,
          );
        },
      );
    });
  }
}
