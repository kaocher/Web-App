import 'package:first/const/app_colors.dart';
import 'package:first/ui/views/home/component/home_component.dart';
import 'package:first/ui/views/record/record_page.dart';
import 'package:first/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25).r,
        child: Text(
          textAlign: TextAlign.center,
          "Made with love by TimeWell",
          style: TextStyle(
              fontSize: 7.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.primaryColor),
        ),
      ),
      backgroundColor: AppColors.lightGreyColor,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10).r,
            child: Column(
              children: [
                homeHeader(onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecordPage()));
                }),
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  "Grow closer to your loved ones\nby asking them this question.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColors.primaryColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      isPressed = !isPressed;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: isPressed
                              ? Border.all(
                                  color: AppColors.seconderyColor, width: 5)
                              : Border.all(
                                  width: 0, color: Colors.transparent)),
                      padding: EdgeInsets.all(20).r,
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Do you have memories of what your parents said you were like as a baby?",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                copyButton(),
                SizedBox(
                  height: 10.h,
                ),
                customOutlineButton(
                    btnText: 'Record this question',
                    icon: Icons.arrow_forward,
                    onPress: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
