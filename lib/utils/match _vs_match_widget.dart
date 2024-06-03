import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/app_element/font_style.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:sizer/sizer.dart';

class MatchVsMatch extends StatefulWidget {
  const MatchVsMatch({super.key});

  @override
  State<MatchVsMatch> createState() => _MatchVsMatchState();
}

class _MatchVsMatchState extends State<MatchVsMatch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Container(
        height: 20.h,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10)
        ),
        child:Column(
          children: [
            Row (
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                  child: Text( "National Teams.Twenty20.4Th match",style: TextStyle(fontSize: 8.sp,),textAlign: TextAlign.center,),
                ),
              ],
            ),
            Divider(height: 0.5.h,),
            SizedBox(height: 1.h,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        // height: 6.h,
                        // width: 10.w,


                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",),
                        ),
                      ),
                      SizedBox(height: 0.5.h,),
                      Text( "mumbai\nIndian",style: TextStyle(fontSize: 10.sp,),textAlign: TextAlign.center,),
                /*      Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Container(
                          height: 5.h,
                          width: 33.w,
                          decoration: BoxDecoration(
                            color: offWhite,borderRadius: BorderRadius.circular(10),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text( "1.90",style: TextStyle(fontSize: 11.sp,),textAlign: TextAlign.center),
                            Text( "IND",style: TextStyle(fontSize: 11.sp,),textAlign: TextAlign.center,)
                          ],),
                        ),
                      ),*/
                    ],
                  ),
                ),
                Image.asset(
                  "${ImagePath.path.boardIcon}vs.png",
                  fit: BoxFit.fill,
                  height: 8.h,
                  width: 10.w,
                ),
          /*                  Column(
                  children: [
                    Text("TODAY",style: TextStyle(fontSize: 10.sp),),
                    Text("01:00",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                    Text("32/2(4.0):0/0",style: TextStyle(fontSize: 10.sp),),
                  ],
                ),*/
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        // height: 6.h,
                        // width: 10.w,

                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://www.thestatesman.com/wp-content/uploads/2023/07/Pakistan-flag-iStock-1.jpg",),
                        ),
                      ),
                      SizedBox(height: 0.5.h,),
                      Text( "DCA\npakistan",style: TextStyle(fontSize: 10.sp,),textAlign: TextAlign.center,),
                  /*    Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Container(
                          height: 5.h,
                          width: 33.w,
                          decoration: BoxDecoration(
                            color: offWhite,borderRadius: BorderRadius.circular(10),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text( "1.90",style: TextStyle(fontSize: 11.sp,),textAlign: TextAlign.center),
                              Text( "PNG",style: TextStyle(fontSize: 11.sp,),textAlign: TextAlign.center,)
                            ],),
                        ),
                      ),*/
                    ],
                  ),
                )
              ],
            ),

Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Expanded(child:
    Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Container(
        decoration: BoxDecoration(
          color: offWhite,borderRadius: BorderRadius.circular(10),
        ),

        child: Padding(
          padding:  EdgeInsets.all(3.sp),
          child: Column(children: [
            Text( "1.90",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),textAlign: TextAlign.center),
            Text( "IND",style: TextStyle(fontSize: 10.sp,),textAlign: TextAlign.center,)
          ],),
        ),
      ),
    ), ),
             Column(
                    children: [
                      Text("TODAY",style: TextStyle(fontSize: 8.sp),),
                      Text("01:00",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
                      Text("32/2(4.0):0/0",style: TextStyle(fontSize: 8.sp),),
                    ],
                  ),
    Expanded(
      child: Padding(
        padding:  EdgeInsets.all(8.0.sp),
        child: Container(
          decoration: BoxDecoration(
              color: offWhite,borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.all(3.0.sp),
            child: Column(children: [
              Text( "1.90",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),textAlign: TextAlign.center),
              Text( "PKN",style: TextStyle(fontSize: 10.sp,),textAlign: TextAlign.center,)
            ],),
          ),
        ),
      ),
    )
  ],
)
          ],
        ),
      ),
    );

  }
}
