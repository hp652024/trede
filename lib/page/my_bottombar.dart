import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/page/wallet/wallet_screen.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import 'home_screen/home_screen.dart';

class MyBottom extends StatefulWidget {
  MyBottom({Key? key}) : super(key: key);

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary1,
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
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          Container(),
          WalletScreen(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: primary1,
        itemColor: white.withOpacity(0.6),
        controller: _pageController,
        flat: true,
        useActiveColorByDefault: false,
        items: const [
          RollingBottomBarItem(Icons.home, label: 'Home', activeColor: white),
          RollingBottomBarItem(
            Icons.question_answer,
            label: 'Question',
            activeColor: white,
          ),
          RollingBottomBarItem(Icons.wallet, label: 'Wallet', activeColor: white),
        ],
        enableIconRotation: true,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
