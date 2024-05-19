import 'package:flutter/material.dart';
import 'package:moneytomoney/utils/appbar.dart';
import 'package:sizer/sizer.dart';
import '../../../app_element/appcolor.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: offWhite,
      appBar: titleAppBar(context, "Contact Us", themeColor, white),
      body: Column(
        children: [
          titleField(title: "Full Name*",hint: "full name")

        ],
      ),
    );
  }
}

Widget titleField({title,hint , controller}){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(title,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w800,color: black),) ,
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 4.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
color: white
          ),
          child: TextField(style: TextStyle(fontSize: 10.sp, ),decoration:InputDecoration(hintText:hint ,border: OutlineInputBorder(borderSide: BorderSide.none)),controller:controller,)),
    )
    ],
  );
}
