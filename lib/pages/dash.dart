// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_manager/views/customprojects.dart';
import 'package:task_manager/views/customtasks.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.blue,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 215, 64, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/profile.png",
                            height: 100,
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Santana Clauss"),
                              Text("App Developer"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Tasks",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 27, 49, 86))),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(Icons.task),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Column(
              children: [
                customtasks(
                    imageUrl: "images/to-do.png",
                    Title: "To Do",
                    subTitle: "5 tasks now.1 started"),
                SizedBox(height: 25),
                customtasks(
                    imageUrl: "images/progress.png",
                    Title: "In Progress",
                    subTitle: "1 task now.1 started"),
                SizedBox(height: 25),
                customtasks(
                    imageUrl: "images/done.png",
                    Title: "Done",
                    subTitle: "13 tasks now.1 started"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Active Projects",
                    style: TextStyle(color: Color.fromARGB(255, 27, 49, 86),fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //alignment: WrapAlignment.spaceAround,
                children: [
                  Customprojects(
                      title: "Medical App",
                      subTitle: "9 hours progress",
                      percentText: "80%",
                      myColor: Color.fromARGB(255, 27, 118, 105)),
                  Customprojects(
                      title: "Making Notes",
                      subTitle: "20 hours progress",
                      percentText: "60%",
                      myColor: Color.fromARGB(255, 127, 32, 25)),
                  Customprojects(
                      title: "Finance App",
                      subTitle: "1 hour progress",
                      percentText: "20%",
                      myColor: Colors.amber),
                  Customprojects(
                      title: "Finance App",
                      subTitle: "1 hour progress",
                      percentText: "20%",
                      myColor: Colors.amber),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
