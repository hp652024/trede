import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:moneytomoney/utils/appbar.dart';
import 'package:moneytomoney/utils/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../app_element/appcolor.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: titleAppBar(context, "Wallet", black, white),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "100",
              style: TextStyle(
                  color: themeColor, fontSize: 25.sp, fontWeight: FontWeight.w600),
            ),
            body18w400(text: "My Balance"),
            height(15),
            box(Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet,
                          color: black, size: 20.sp),
                      width(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          body12w400(text: "Deposite", textColor: grey),
                          title15w600(text: "100", textColor: black),
                        ],
                      ),
                      const Spacer(),
                      CustomButton(
                          buttonName: "add cash",
                          width: 20.w,
                          height: 4.h,
                          buttonColor: themeColor,
                          textStyle: TextStyle(
                              fontSize: 8.sp,
                              color: white,
                              fontWeight: FontWeight.bold),
                          nameColor: white,
                          isBorder: false),
                    ],
                  ),
                  height(15),
                  Row(
                    children: [
                      body15w400(text: "View Breakdown", textColor: grey),
                      Icon(Icons.arrow_forward_ios_rounded,
                          size: 15.sp, color: grey),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ],
              )),
            height(15),
            box(Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_balance,
                        color: black, size: 20.sp),
                    width(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        body12w400(text: "Winning", textColor: grey),
                        title15w600(text: "100", textColor: black),
                      ],
                    ),
                    const Spacer(),
                    CustomButton(
                        buttonName: "withdraw",
                        width: 20.w,
                        height: 4.h,
                        buttonColor: grey,
                        textStyle: TextStyle(
                            fontSize: 8.sp,
                            color: white,
                            fontWeight: FontWeight.bold),
                        nameColor: black,
                        isBorder: false),
                  ],
                ),
                height(15),
                Row(
                  children: [
                    body15w400(text: "KYC verify for your amount withdraw", textColor: themeColor),
                    Icon(Icons.arrow_forward_ios_rounded,
                        size: 15.sp, color: grey),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ],
            )),
            height(15),
            title15w600(text: "Quick Action"),
            actionTile("Transection History","For all balance debit and credit",""),
            actionTile("Transection History","For all balance debit and credit",""),
            actionTile("Transection History","For all balance debit and credit",""),
            actionTile("Transection History","For all balance debit and credit",""),
            actionTile("Transection History","For all balance debit and credit",""),
          ],
        ),
      )),
    );
  }

  ListTile actionTile(String title,String subtitle,String icon) {
    return ListTile(
      title: title12w600(text: title,textColor: black),
      subtitle: body12w400(text: subtitle,textColor: grey),
      trailing: Icon(Icons.arrow_forward_ios_rounded,size: 10.sp,color: black),
    );
  }

  Container box(Widget child) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: offWhite,
      ),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }
}