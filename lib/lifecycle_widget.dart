import 'dart:ui';

import 'package:flutter/material.dart';
class LifecycleWidget extends StatefulWidget {

  @override
  State<LifecycleWidget> createState() => _LifecycleWidgetState();
}

class _LifecycleWidgetState extends State<LifecycleWidget> {

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant LifecycleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifecycle Widget"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Center(
                  child: Text(
                      "Máy tính bỏ túi",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
