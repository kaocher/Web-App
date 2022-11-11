import 'package:first/const/app_colors.dart';
import 'package:first/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homeHeader({VoidCallback? onpress}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.face_outlined,
        size: 60.h,
        color: AppColors.primaryColor,
      ),
      CustomOutlineButton(onPress: () {}, btnText: "Record their answer"),
    ],
  );
}

//Colored button

Widget copyButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20).r,
    width: 130.w,
    decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12).r),

    // padding: EdgeInsets.all(5).r,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.copy,
          color: Colors.white,
        ),
        Text(
          'Copy this question',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    ),
  );
}

//OutlineButton with Icon

Widget homeOutlineButton() {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.primaryColor, width: 2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)))),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5).r,
      width: 110.w,
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(10).r
          ),

      // padding: EdgeInsets.all(5).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.arrow_forward,
            color: AppColors.primaryColor,
          ),
          Text(
            'Record this question',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
        ],
      ),
    ),
  );
}
