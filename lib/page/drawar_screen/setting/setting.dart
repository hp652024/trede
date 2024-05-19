import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/page/drawar_screen/contact%20Us/contact_us.dart';
import 'package:moneytomoney/utils/appbar.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: offWhite,
      appBar: titleAppBar(context, "Setting", themeColor, white),
      body: Column(
        children: [
          customTile(text: "Notifications"),
          customTile(text: "SportsBaazi Policies"),
          InkWell(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) =>const ContactUs()
              ),
            );
          },child: customTile(text: "Contact Us")),
          customTile(text: "Logout"),
        ],
      ),
    );
  }
}
Widget customTile({text}){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: Container(
      height: 4.5.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text,style: const TextStyle(color: black,fontSize: 15),),const Spacer(),Icon(Icons.arrow_right)
          ],
        ),
      ),
    ),
  );
}