import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/utils/on_boarding_widget.dart';
import 'package:moneytomoney/utils/question_widget.dart';
import '../../app_element/global_variable.dart';

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
      backgroundColor: lightGray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: SliderGlobal(),
            ), SizedBox(
              child: TabBar(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabControllerTo,
                  isScrollable: true,
                  labelColor: mediumGray,
                  tabAlignment: TabAlignment.center,
                  // indicatorColor: primary1,
                  unselectedLabelColor: primary1,
                  // unselectedLabelColor: AppColor.primaryText,
                  labelStyle: TextStyle(
                      fontSize: 15.dp,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600),
                  dividerColor: primary1,
                  indicator: const BoxDecoration(
                      border: Border(

                          bottom: BorderSide(
                              color: primary1, width: 2))),
                  tabs:  [
                    Tab(
                      text: "  Custom Search  ",
                    ),
                    Tab(
                      text: "  Search with Matri ID ",
                    ),
                  ]),
            ),
           /* Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 11.h,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 13.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img.etimg.com/thumb/width-1200,height-900,imgsize-1157704,resizemode-75,msid-94321543/news/sports/new-cricket-rules-saliva-ban-made-permanent-icc-announces-a-slew-of-changes-to-playing-conditions.jpg"),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Text(
                            "Cricket",
                            style: titleMedium,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),*/
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
