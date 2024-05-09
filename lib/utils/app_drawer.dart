import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:moneytomoney/utils/appbar.dart';
import 'package:sizer/sizer.dart';

class AppDrawar extends StatefulWidget {
  const AppDrawar({super.key});

  @override
  State<AppDrawar> createState() => _AppDrawarState();
}

class _AppDrawarState extends State<AppDrawar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 100.w,
        backgroundColor: white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: backArrow(() {
                  Navigator.pop(context);
                }),
              ),
              height(15),
              Center(
                  child: circleImage(50.sp,
                      AssetImage("${ImagePath.path.defaultImage}profile.png"))),
              height(15),
              body18w400(text: "Prince"),
              height(15),
              Row(
                children: [
                  detailBox("balance.png", "0", "Balance"),
                  width(10),
                  detailBox("leaderboard.png", "0", "Leaderboard"),
                  width(10),
                  detailBox("level.png", "0", "My Level"),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: offWhite,
                ),
                child: Column(
                  children: [
                    tile(Icons.support_agent_rounded, "Help"),
                    tile(Icons.support_agent_rounded, "Invite and Earn"),
                    tile(Icons.support_agent_rounded, "Term & Condition"),
                    tile(Icons.star_rate_outlined, "Rate Trade"),
                    tile(Icons.message_outlined, "Pulse"),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Image.asset(
                      "${ImagePath.path.socialIcon}insta.png",
                      height: 18.sp,
                      width: 18.sp,
                      fit: BoxFit.fill,
                    ),
                    width(15),
                    Image.asset(
                      "${ImagePath.path.socialIcon}facebook.png",
                      height: 18.sp,
                      width: 18.sp,
                      fit: BoxFit.fill,
                    ),
                    width(15),
                    Image.asset(
                      "${ImagePath.path.socialIcon}twitter.png",
                      height: 18.sp,
                      width: 18.sp,
                      fit: BoxFit.fill,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailBox(String icon, String value, String tag) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: offWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "${ImagePath.path.drawarIcon}${icon}",
              width: 20.sp,
              height: 20.sp,
              fit: BoxFit.fill,
            ),
            height(5),
            title12w600(text: "${value}"),
            body12w400(text: '${tag}'),
          ],
        ),
      ),
    );
  }

  Widget tile(IconData icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Icon(icon),
          width(10),
          body15w400(text: title),
          const Spacer(),
          Icon(Icons.arrow_forward_ios_rounded, color: black, size: 15.sp),
        ],
      ),
    );
  }
}
