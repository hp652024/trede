import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:sizer/sizer.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({super.key});

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        title: title15w600(text: "Board", textColor: white),
        actions: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close, color: white, size: 20.sp)),
          width(10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
                      ),
                    ),
                    width(8),
                    Text(
                      "mumbai\nIndian",
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Image.asset(
                  "${ImagePath.path.boardIcon}vs.png",
                  fit: BoxFit.fill,
                  height: 5.h,
                  width: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      "mumbai\nIndian",
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width(8),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            height(15),
            SizedBox(height: 5.h,
              child: Row(
                children: [
                  Expanded(child: Transform.(child: Container(alignment: Alignment.center,color: themeColor))),
                  width(8),
                  Expanded(child: Container(alignment: Alignment.center,color: white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TeamCard(String img) {
    return Expanded(
      child: Container(
        height: 15.h,
        width: 100,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(img), fit: BoxFit.fill, opacity: 2),
            borderRadius: BorderRadius.circular(8),
            color: white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: title15w600(text: '₹ 20000', textColor: white),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(5)),
                alignment: Alignment.center,
                child: Column(
                  children: [title15w600(text: "India")],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget moneyAdd({amount}) {
    return Container(
      height: 10.w,
      width: 10.w,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2)),
      child: Center(
        child: Text(
          amount,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
        ),
      ),
    );
  }
}
