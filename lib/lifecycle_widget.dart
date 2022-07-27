import 'package:flutter/material.dart';
class LifecycleWidget extends StatefulWidget {

  @override
  State<LifecycleWidget> createState() => _LifecycleWidgetState();
}

class _LifecycleWidgetState extends State<LifecycleWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifecycle Widget"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
