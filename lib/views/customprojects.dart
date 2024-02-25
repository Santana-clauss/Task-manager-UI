// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Customprojects extends StatelessWidget {
  final String title;
  final String subTitle;
  final String percentText;
  final Color myColor;

  const Customprojects({
    required this.title,
    required this.subTitle,
    required this.percentText,
    required this.myColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 52, 83, 109)
      ),
      height: 150,
      width: 120,
     // color: const Color.fromARGB(255, 19, 77, 125),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column( 
          children: [
            CircularPercentIndicator(radius: 30,
            lineWidth: 2.0,
            percent: 1.0,
            center: new Text(percentText),
            progressColor: myColor
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title),
                Text(subTitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

