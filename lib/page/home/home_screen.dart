import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/page/home/home_controller.dart';
import 'package:moneytomoney/utils/match%20_vs_match_widget.dart';
import 'package:moneytomoney/utils/on_boarding_widget.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: SliderGlobal(),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(onTap: () {
                  homeProvider.tabOne();
                },
                  child: Container(
                    height: 4.h,
                    decoration: BoxDecoration(color: homeProvider.selectTab?themeColor:white,
                        borderRadius:BorderRadius.circular(10)
                    ),child: Center(child: Text("Cricket",style: TextStyle(color:  homeProvider.selectTab?white:black),)),),
                ),
              ),
              Expanded(child: InkWell(onTap: () {
                homeProvider.tabTo();
              },
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(color: homeProvider.selectTab?white:themeColor ,
                      borderRadius:BorderRadius.circular(10)
                  ),child:  Center(child: Text("Football",style: TextStyle(color:  homeProvider.selectTab?black:white))),),
              ))
            ],
          ),
        ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MatchVsMatch();
              },
            ),
          ],
        ),
      ),
    );
  }
}
