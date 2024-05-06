import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                height: 20.h,
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
          SizedBox(
            height: 10,
          ),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildPage() => AnimatedSmoothIndicator(
    activeIndex: _current,
    count:images.length,
    effect: ExpandingDotsEffect(
        spacing: MediaQuery.of(context).size.width * 0.021,
        dotWidth: MediaQuery.of(context).size.width * 0.05,
        dotHeight: MediaQuery.of(context).size.height * 0.008,
        dotColor: dimGray,
        activeDotColor: primary1),
  );
}
