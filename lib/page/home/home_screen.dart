import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/app_text_widget.dart';
import 'package:moneytomoney/app_element/appcolor.dart';

import 'package:moneytomoney/utils/on_boarding_widget.dart';
import 'package:moneytomoney/utils/question_widget.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabControllerTo;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabControllerTo = TabController(
      length: 2,
      vsync: this,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: SliderGlobal(),
            ),
            SizedBox(
              height: 7.h,
              child: TabBar(
                padding: EdgeInsets.all(5),

                indicatorColor: black,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabControllerTo,
                  // isScrollable: false,
                  labelColor: white,
                  // tabAlignment: TabAlignment.center,

                   unselectedLabelColor: black,

                  labelStyle: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600),

                  indicator: const BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: appBarColor,
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black, width: 2))),
                  tabs:  [
                    Tab(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text("Cricket")
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("FoodBall")
                        ],
                      ),
                    ),
                  ]),
            ),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Question();
              },
            ),
          ],
        ),
      ),
    );
  }
}
