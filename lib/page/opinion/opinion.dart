

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/utils/question_widget.dart';

class Opinion extends StatefulWidget {
  const Opinion({super.key});

  @override
  State<Opinion> createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> {
List category = ['Cricket','News','Football','Crypto','Basketball','Election','mag'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 10.0, // Set spacing between items
                runSpacing: 5.0,
                children: category.map((e) {
                  return Container(
                    padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     border: Border.all(color: black),borderRadius: BorderRadius.circular(30)
                   ),
                      child: Text("${e}"));
                } ).toList(),
              ),
            ),
            ListView.builder(shrinkWrap: true,itemCount: 10,physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Question();
              },
            )
          ],
        ),
      ),
    );
  }
}

