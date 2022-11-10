import 'package:first/const/app_colors.dart';
import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: Icon(
          Icons.apple,
          color: Colors.black,
        ),
        title: Text("App Well"),
      ),
    );
  }
}
