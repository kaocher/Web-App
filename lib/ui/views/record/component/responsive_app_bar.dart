import 'package:first/const/app_colors.dart';
import 'package:first/widgets/custom_text.dart';
import 'package:flutter/material.dart';

List drawerItem = ["Overview", "About", "Price", "Blog", "Support"];

AppBar resAppBar() {
  return AppBar(
    backgroundColor: Colors.amber,
    elevation: 0,
    leading: const Text(
      "T I M E W E L L",
      style:
          TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),
    ),
    title: Container(
      width: 400,
      child: ListView.builder(
          itemCount: drawerItem.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomText(text: "ABC");
          }),
    ),
  );
}
