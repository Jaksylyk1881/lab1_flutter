import 'package:flutter/material.dart';

class GenerateButton extends StatelessWidget {
  VoidCallback callback;
  GenerateButton({Key? key,required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      elevation: 5,
      minWidth: double.infinity,
      height: 50,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: callback,
      child: const Text('Generate'),);
  }
}


