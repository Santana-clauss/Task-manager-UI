// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class customtasks extends StatelessWidget {
  final String imageUrl;
  final String Title;
  final String subTitle;
  const customtasks({
    required this.imageUrl,
    required this.Title,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 50,
),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Title,style: TextStyle(color: Colors.black),),
              Text(subTitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
