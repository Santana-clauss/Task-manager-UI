// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_todolist/config/constant.dart';
import 'package:flutter_todolist/views/customtext.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  final bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Get.toNamed("/home")),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  customtitleText(
                    label: 'Account',
                    fontSize: 20,
                    labelColor: blackColor,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: 'Change Password'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: 'Content Settings'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: 'Language'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: 'Privacy and Security'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Icon(Icons.notification_add),
                  SizedBox(
                    width: 10,
                  ),
                  customtitleText(
                    label: 'Notifications',
                    fontSize: 20,
                    labelColor: blackColor
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: "Theme dark"),
                  //
                  Switch(
                    value: _isSwitched,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtitleText(label: "Account Activity"),
                  //
                  Switch(
                    value: _isSwitched,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign out"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: orangeColor,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
