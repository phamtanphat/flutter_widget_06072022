import 'package:flutter/material.dart';

class RelativeWidget extends StatefulWidget {
  const RelativeWidget({Key? key}) : super(key: key);

  @override
  State<RelativeWidget> createState() => _RelativeWidgetState();
}

class _RelativeWidgetState extends State<RelativeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Container(
              width: 250,
              height: 250,
              color: Colors.red,
              child: Text("View A")
          ),
          Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Text("View B")
          ),
        ],
      ),
    );
  }
}
