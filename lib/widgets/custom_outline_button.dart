import 'package:first/const/app_colors.dart';
import 'package:first/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  final VoidCallback onPress;
  IconData? icon;
  final String btnText;
  bool? isIcon;

  CustomOutlineButton(
      {required this.onPress, required this.btnText, this.icon, this.isIcon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 3).r,
        width: ResponsiveLayOut.isMobile(context) ? 110.w : 130,
        child: Row(
          mainAxisAlignment: isIcon == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isIcon == true
                ? Icon(
                    icon,
                    color: AppColors.primaryColor,
                  )
                : Text(""),
            Text(
              btnText.toString(),
              style: TextStyle(
                  fontSize: ResponsiveLayOut.isMobile(context) ? 12 : 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
