// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_manager/config/const.dart';
import 'package:task_manager/views/customText.dart';

class CustomTranscations extends StatelessWidget {
  const CustomTranscations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                height: 80,
                width: 80,
                color: appGreenColor,
                child: Icon(Icons.arrow_forward)),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customText(label: "Taco Bell"),
                customText(label: "Apr 23"),
              ],
            ),
          ],
        ),
        customText(label: "5.00"),
      ],
    );
  }
}
