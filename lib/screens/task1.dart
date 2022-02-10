import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lab1_flutter/widgets/generate_button.dart';
import 'package:lab1_flutter/widgets/random_nums.dart';
class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int firstNum = 0;
  int secondNum = 0;
  int thirdNum = 0;
  int middle = 0;
  void randomaizer(){
    Random random = Random();
    List<int> numberList=[];
    while(numberList.length<3){
      int randomNumber = random.nextInt(100);
      if (!numberList.contains(randomNumber)){
        numberList.add(randomNumber);
      }
    }
    firstNum = numberList[0];
    secondNum = numberList[1];
    thirdNum = numberList[2];
  }

  int getMiddleNumber(int firstNum, int secondNum, int thirdNum){
    int middle;

    if(firstNum<secondNum&&secondNum<thirdNum||thirdNum<secondNum&&secondNum<firstNum){
      middle = secondNum;
    }else if(secondNum<firstNum&&firstNum<thirdNum||thirdNum<firstNum&&firstNum<secondNum){
      middle = firstNum;
    }else{
      middle = thirdNum;
    }

    return middle;
  }


  @override
  void initState() {
    super.initState();
    setState(() {
      randomaizer();
      middle = getMiddleNumber(firstNum, secondNum, thirdNum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              RandomNum(num: firstNum),
              RandomNum(num: secondNum),
              RandomNum(num: thirdNum)
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Middle Number Is',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle
            ),
            child:  Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(child: Text(middle.toString(),style: const TextStyle(fontSize: 150,color: Colors.white),textAlign: TextAlign.center,)),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 35),
            child: GenerateButton(
              callback: (){
                setState(() {
                  randomaizer();
                  middle = getMiddleNumber(firstNum, secondNum, thirdNum);
                });
              },
            )
          )
        ],
      ),
    );
  }
}


