// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:task_manager/config/const.dart';
import 'package:task_manager/views/customText.dart';



class customButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  final Color? buttonColor;
  const customButton({
    super.key,
    this.action,
    required this.buttonLabel,
    this.buttonColor,
  });

  //final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: action,
        child: customText(
          label: buttonLabel,
          //labelColor: appWhiteColor,
          labelColor: Colors.black,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          primary: buttonColor,
          elevation: 10,
          padding: const EdgeInsets.all(20),
          shadowColor: primaryColor,
        

        ),
        );
  }
}
