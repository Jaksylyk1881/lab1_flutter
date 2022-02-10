import 'package:flutter/material.dart';
import 'package:lab1_flutter/screens/task1.dart';
import 'package:lab1_flutter/screens/task2.dart';
import 'package:lab1_flutter/screens/task3.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Task1',),
                Tab(text: 'Task2',),
                Tab(text: 'Task3',)
              ],
            ),
            title: const Text('Labka 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          body: const TabBarView(
            children: [
              Task1(),
              Task2(),
              Task3(),
            ],
          ),
        ),
      ),
    );
  }
}
