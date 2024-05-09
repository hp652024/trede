import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/font_style.dart';

import 'package:sizer/sizer.dart';

import '../app_element/appcolor.dart';

class SliderGlobal extends StatefulWidget {
  // final List<feature.Data> dataList;
  const SliderGlobal({super.key , /*required this.dataList*/});

  @override
  State<SliderGlobal> createState() => _SliderGlobalState();
}

class _SliderGlobalState extends State<SliderGlobal> {
  final _carouselController = CarouselController();
  int _current = 0;
List images = [
  "https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg",
"https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg",
"https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,

      ),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: false,
                // enlargeCenterPage: true,
                height: 13.h,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: images.asMap().entries.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color:Colors.deepPurple,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "${images[i.key]}")),
                        ),
                       ),
                  );
                },
              );
            }).toList(),
          ),
          width(5),
          Indicator(listLength: images.length, realindex: _current )
        ],
      ),
    );
  }
}
Widget Indicator({required int listLength, required int realindex,Color? activeIndicatorColor}) {
  return Container(
    height: 4.sp,
    child: ListView.builder(
      itemCount: listLength,
      itemBuilder: (context, index) {
        return AnimatedContainer(
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80)
          ),
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: realindex == index ? 6.w : 5.w,
          height: 5.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(realindex == index ? 10 : 50),
              color: realindex == index ? activeIndicatorColor ?? black : Colors.grey.shade300),
        );
      },
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    ),
  );
}