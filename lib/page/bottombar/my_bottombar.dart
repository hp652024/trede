import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:moneytomoney/page/bottombar/dash_provider.dart';
import 'package:moneytomoney/page/home/home_screen.dart';
import 'package:moneytomoney/page/opinion/opinion.dart';

import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:moneytomoney/app_element/appcolor.dart';

import '../../app_element/font_style.dart';
import '../../utils/app_drawer.dart';
import '../../utils/appbar.dart';

class MyBottom extends StatefulWidget {
  MyBottom({Key? key}) : super(key: key);

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: scaffoldKey,
      drawer: AppDrawar(),
      backgroundColor: white,
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: Consumer<DashProvider>(
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
      appBar: mainAppBar(context, scaffoldKey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            body10w400(text: "prince"),
            body12w400(text: "prince"),
            body15w400(text: "prince"),
            body18w400(text: "prince"),
          ],
        ),
      ),
      /*Stack(
        children: [
      /*Consumer<DashProvider>(
            builder: (context, value, child) {
              return IndexedStack(
                index: value.pageIndex,
                children: <Widget>[
                  HomeScreen(),
                  Container(),
                  WalletScreen(),
                  WalletScreen(),
                ],
              );
            },
          ),*/
          Column(children: [

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
            "${ImagePath.path.bottombarIcon}${img}",
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
