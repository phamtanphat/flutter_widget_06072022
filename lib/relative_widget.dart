import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RelativeWidget extends StatefulWidget {
  const RelativeWidget({Key? key}) : super(key: key);

  @override
  State<RelativeWidget> createState() => _RelativeWidgetState();
}

class _RelativeWidgetState extends State<RelativeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: SizedBox(
              height: 300,
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
