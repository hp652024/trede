import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:sizer/sizer.dart';

import '../page/wallet/wallet_screen.dart';

mainAppBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
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
      walletIcon(context),
      width(8),
    ],
  );
}

titleAppBar(BuildContext context, String title,Color bgColor,Color titleColor) {
    return AppBar(
      backgroundColor: bgColor,
      leading: backArrow(() {
        Navigator.pop(context);
      },white),
      title: title18w600(text: "${title}", textColor: titleColor),
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

Widget walletIcon(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WalletScreen(),
          ));
    },
    child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: white.withOpacity(0.70),
            borderRadius: BorderRadius.circular(20)),
        child: Icon(Icons.account_balance_wallet_outlined,
            size: 15.sp, color: black)),
  );
}

Widget backArrow(void Function() onTap,Color iconColor) {
  return InkWell(
      onTap: onTap, child: Icon(Icons.arrow_back, size: 20.sp, color: iconColor));
}

Widget circleImage(double redius, ImageProvider image) {
  return CircleAvatar(
      radius: redius, backgroundImage: image, backgroundColor: offWhite);
}
