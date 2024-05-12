import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:sizer/sizer.dart';

import '../app_element/appcolor.dart';

class CustomButton extends StatelessWidget {
  double? height;
  double? width;
  String? buttonName;
  Color? buttonColor;
  Color? nameColor;
  TextStyle? textStyle;
  final bool isBorder;

  CustomButton(
      {super.key,
      this.height,
      this.width,
      required this.buttonName,
      this.buttonColor,
      this.textStyle,
      this.nameColor,
      this.isBorder = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width ?? 80.w,
        height: height ?? 10.h,
        alignment: Alignment.center,
        child: Text(
          "${buttonName}".toUpperCase(),
          style: textStyle ??
              TextStyle(
                fontWeight: FontWeight.w500,
                color: nameColor,
                fontSize: 12.sp,
              ),
        ),
        decoration: BoxDecoration(
            color: buttonColor ?? black,
            border: Border.all(color: isBorder ? nameColor ?? white : white),
            borderRadius: BorderRadius.circular(5.sp)),
      ),
    );
  }
}
