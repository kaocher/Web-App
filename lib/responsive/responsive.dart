import 'package:first/responsive/dimensions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayOut extends StatelessWidget {
  //Device type declaretion
  final Widget mobile;
  final Widget deskTop;
  const ResponsiveLayOut(
      {super.key, required this.mobile, required this.deskTop});

  //Boolean value for device
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > mobileWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobileWidth) {
        return mobile;
      } else {
        return deskTop;
      }
    });
  }
}
