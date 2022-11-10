import 'package:first/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customOutlineButton({
  VoidCallback? onPress,
  IconData? icon,
  required String? btnText,
}) {
  return OutlinedButton(
    onPressed: onPress,
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
        children: [
          Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          Text(
            btnText.toString(),
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
