import 'package:first/const/app_colors.dart';
import 'package:first/ui/styles/text_style.dart';
import 'package:first/ui/views/record/component/responsive_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "T I M E W E L L",
            style: TextStyle(
                color: AppColors.primaryColor, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            color: Colors.black,
          ),
        ],
      )),
      body: Center(
        child: Container(
          color: Colors.amber,
          height: 60,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "T I M E W E L L",
                style: TextStyle(
                    color: AppColors.primaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextButton(
                                onPressed: () {},
                                onFocusChange: (value) =>
                                    FocusScope.of(context).unfocus(),
                                child: Text(
                                  drawerItem[index],
                                  style: AppTextStyle.normalStyle(),
                                ))),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
