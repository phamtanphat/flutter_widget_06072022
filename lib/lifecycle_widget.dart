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
        title: const Text("Lifecycle Widget"),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: const Center(
                child: const Text("Máy tính bỏ túi",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontFamily: "edu",
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Flexible(
                flex: 3,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Column(
                    children: [
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Input number 1",
                          prefixIcon: Icon(
                              Icons.looks_one_outlined,
                              color: Colors.red,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.greenAccent)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.greenAccent)
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("Click"))
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
