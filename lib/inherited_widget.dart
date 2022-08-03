import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DemoInheritedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Build Context"),
      ),
      body: ParentContainer(
        child: Children(),
      ),
    );
  }
}

class ParentContainer extends StatefulWidget {

  Widget? child;

  ParentContainer({this.child});

  @override
  State<ParentContainer> createState() => _ParentContainerState();
}

class _ParentContainerState extends State<ParentContainer> {
  int number = 0;

  void randomNumber() {
    setState(() {
      number = Random().nextInt(100);
      print(number);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Value = $number", style: TextStyle(fontSize: 30),),
          ElevatedButton(
              onPressed: (){
                randomNumber();
              },
              child: Text("Random number")
          ),
          widget.child ?? SizedBox(),
        ],
      ),
    );
  }
}

class Children extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Children"),
      ),
    );
  }
}

