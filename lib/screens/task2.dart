import 'package:flutter/material.dart';
import 'package:lab1_flutter/widgets/generate_button.dart';
import 'package:lab1_flutter/widgets/num_text_field.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  TextEditingController controller = TextEditingController();
  int year = 0;
  bool isLeap = false;
  bool isLeapYear(int year){
    if(year%4==0){
      if(year%100==0){
        if(year%400==0){
          return true;
        }else{
          return false;
        }
      }else{
        return true;
      }
    }else{
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
          child: NumTextField(
            hintText: 'Write Year',
            controller: controller,
            callBack: (newValue){
              year = int.parse(newValue);
            },
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,),
          child: GenerateButton(
            callback: (){
              setState(() {
                isLeap = isLeapYear(year);
                controller.clear();
              });
            },
          )
        ),
        Expanded(child:Center(
          child: Text((year==0)?'':'$year is ${isLeap?'a':'a not'} leap year'),
        ))
      ],
    );
  }
}
