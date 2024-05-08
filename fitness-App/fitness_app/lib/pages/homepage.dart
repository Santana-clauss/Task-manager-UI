// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fitness_app/views/customtext.dart';
import 'package:fitness_app/views/customtextfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   // image: AssetImage("assets/images/logo.png"),
                  //   // fit: BoxFit.contain,
                  //   // alignment: Alignment.center,
                    
                  // ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)
                  ,bottomRight: Radius.circular(10)),
                  color: Colors.orange.shade200,
            
                ),
              ),
              SafeArea(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.menu),
                  SizedBox(height: 15,),
                  Center(child: customText(label: "Good Morning\n Mercy")),
                  SearchBar()
                  
                ],
              ) )
              // Icon(Icons.dashboard),
              // Text("Good Morning "),
              // Text("Mercy")
            
            ],
          ),
        ],
      ),
    );
  }
}