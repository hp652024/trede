import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/font_style.dart';

import 'package:moneytomoney/app_element/images_path.dart';
import 'package:moneytomoney/page/bottombar/dash_provider.dart';
import 'package:moneytomoney/page/home/home_screen.dart';
import 'package:moneytomoney/page/opinion/opinion.dart';

import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:moneytomoney/app_element/appcolor.dart';

class MyBottom extends StatefulWidget {
  MyBottom({Key? key}) : super(key: key);

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Consumer<HomeProvider>(
        builder: (context, value, child) {
          return Container(
            height: 7.h,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: offWhite,
                border: Border(top: BorderSide(color: black, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottom_tab(
                    value.pageIndex == 0 ? "select_match.png" : "match.png",
                    "MATCH",
                    0),
                bottom_tab(
                    value.pageIndex == 1 ? "select_opinion.png" : "opinion.png",
                    "OPINION",
                    1),
                bottom_tab(
                    value.pageIndex == 2
                        ? "select_portfolio.png"
                        : "portfolio.png",
                    "PORTFOLIO",
                    2),
                bottom_tab(
                    value.pageIndex == 3 ? "select_reward.png" : "reward.png",
                    "REWARD",
                    3),
              ],
            ),
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ),
        title: const Text(
          "Hiren Surani",
          style: TextStyle(color: white),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet_outlined),
                SizedBox(
                  width: 3.w,
                ),
                const Text("₹100"),
              ],
            ),
          ),
        ],

      ),
      body: Consumer<HomeProvider>(builder: (context, value, child) {
        return value.pageIndex == 0? const HomeScreen(): Opinion();
      },)

    );
  }

  Widget bottom_tab(String img, String lable, int index) {
    return InkWell(
      onTap: () {
        context.read<HomeProvider>().chnagePageIndex(index);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "${ImagePath.path.bottombarImage}${img}",
            height: 5.w,
            width: 5.w,
            fit: BoxFit.fill,
          ),
          body10w400(text: "${lable}"),
        ],
      ),
    );
  }
}
