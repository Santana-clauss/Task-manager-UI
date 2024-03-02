// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_manager/config/const.dart';
import 'package:task_manager/views/customButton.dart';
import 'package:task_manager/views/customText.dart';
import 'package:task_manager/views/customtranscations.dart';

class Transcations
 extends StatelessWidget {
  const Transcations
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(child: customText(label: "Cash")),
                  Icon(Icons.settings),
        
                ],
                
              ),
              SizedBox(height: 25.0,),
              customText(label:"1234.34"),
        
              SizedBox(
                height: 25.0,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(buttonLabel:"Deposit",buttonColor: Colors.blue,),
                  customButton(buttonLabel: "Send Money"),
                  customButton(buttonLabel: "Pay Bills"),
                ],
              ),
        
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customText(label: "Recent Transactions",fontSize: 25,labelColor: appBlackColor,),
                ],
              ),
              SizedBox(height: 25,),
        
              CustomTranscations(),
              SizedBox(height: 25,),
        
              CustomTranscations(),
              SizedBox(height: 25,),
        
              CustomTranscations(),
              SizedBox(height: 25,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(label: "View all Transcations"),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              )
        
            ],
          
          ),
        ),
      ),
    );
  }
}

