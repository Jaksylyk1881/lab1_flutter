import 'package:flutter/material.dart';

import '../constants.dart';

class NumTextField extends StatelessWidget {
  TextEditingController controller;
  void Function(String)? callBack;
  String hintText;
  NumTextField({Key? key,required this.controller, required this.callBack, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        onChanged: (newValue){
          callBack!(newValue);
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration:  kTextFieldDecoration.copyWith(
            hintText: hintText
        )
    );
  }
}