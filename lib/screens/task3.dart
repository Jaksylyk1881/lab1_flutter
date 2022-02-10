import 'package:flutter/material.dart';
import 'package:lab1_flutter/widgets/generate_button.dart';
import 'package:lab1_flutter/widgets/num_text_field.dart';


class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  _Task3State createState() => _Task3State();
}

class _Task3State extends State<Task3> {

  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  int n1=0;
  int n2=0;
  int n3=0;
  int n4=0;

  String orderedNums = '';


  String getOrderedNums(int n1, int n2, int n3, int n4){
    String ordered = '';
    List<int> nums = [n1,n2,n3,n4];
    nums.sort();
    for(int i in nums.reversed){
      ordered+=i.toString()+' ';
    }
    return ordered;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
          child: Row(
            children: [
              Expanded(child: NumTextField(hintText:'n1',controller: controllers[0],callBack: (newValue){
                n1 = int.parse(newValue);
              },)),
              Expanded(child: NumTextField(hintText:'n2',controller: controllers[1],callBack: (newValue){
                n2 = int.parse(newValue);
              },)),
              Expanded(child: NumTextField(hintText:'n3',controller: controllers[2],callBack: (newValue){
                n3 = int.parse(newValue);
              },)),
              Expanded(child: NumTextField(hintText:'n4',controller: controllers[3],callBack: (newValue){
                n4 = int.parse(newValue);
              },)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,),
          child: GenerateButton(
            callback: (){
              setState(() {
                orderedNums = getOrderedNums(n1, n2, n3, n4);
                for(TextEditingController controller in controllers){
                  controller.clear();
                }
              });
            },
          )
        ),
        Expanded(child:Center(
          child: Text(orderedNums),
        ))
      ],
    );
  }
}




