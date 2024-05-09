import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:sizer/sizer.dart';

MainAppBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: themeColor,
    leading: leadingAppbar(context, scaffoldKey),
    title: title18w600(text: "TRADE", textColor: white),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(Icons.notifications_active_outlined,
            color: white, size: 15.sp),
      ),
      walletIcon(),
      width(8),
    ],
  );
}

Widget leadingAppbar(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return GestureDetector(
    onTap: () {
      scaffoldKey.currentState!.openDrawer();
    },
    child: Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 12.sp,
          backgroundColor: offWhite,
          child: Icon(Icons.person, color: grey, size: 18.sp),
        ),
        Align(
          alignment: Alignment(0.5, 0.5),
          child: CircleAvatar(
            radius: 6.sp,
            backgroundColor: white,
            child: Icon(Icons.filter_list_outlined, color: black, size: 10.sp),
          ),
        ),
      ],
    ),
  );
}

Widget walletIcon() {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: white.withOpacity(0.70),
          borderRadius: BorderRadius.circular(20)),
      child: Icon(Icons.account_balance_wallet_outlined,
          size: 15.sp, color: black));
}

Widget backArrow(void Function() onTap) {
  return InkWell(
      onTap: onTap, child: Icon(Icons.arrow_back, size: 20.sp, color: black));
}

Widget circleImage(double redius, ImageProvider image) {
  return CircleAvatar(radius: redius, backgroundImage: image,backgroundColor: offWhite);
}
