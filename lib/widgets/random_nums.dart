import 'package:flutter/material.dart';

class RandomNum extends StatelessWidget {
  const RandomNum({
    Key? key,
    required this.num,
  }) : super(key: key);

  final int num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child: Container(
        height: 60,
        width: 60,
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(num.toString(),style: const TextStyle(fontSize: 30,color: Colors.black87),)),
        ),decoration: const BoxDecoration(color: Colors.blueAccent,shape: BoxShape.circle),),
    );
  }
}