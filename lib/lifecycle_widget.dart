import 'dart:ui';

import 'package:flutter/material.dart';

class LifecycleWidget extends StatefulWidget {
  @override
  State<LifecycleWidget> createState() => _LifecycleWidgetState();
}

class _LifecycleWidgetState extends State<LifecycleWidget> {
  TextEditingController textControllerNumber1 = TextEditingController();
  TextEditingController textControllerNumber2 = TextEditingController();

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

  /**
   * Event Click Button Plus
   */
  void onPressButtonPlus() {

  }

  /**
   * Event Click Button Minute
   */
  void onPressButtonMinute() {

  }

  /**
   * Event Click Button Multiplication
   */
  void onPressButtonMultiplication() {

  }

  /**
   * Event Click Button Divide
   */
  void onPressButtonDivide() {

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
                        fontSize: 30
                    )),
              ),
            ),
            Flexible(
                flex: 3,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      createTextFieldWidget(hintText: "Input number 1", controller: textControllerNumber1),
                      createTextFieldWidget(hintText: "Input number 2", controller: textControllerNumber2),
                    ],
                  ),
                )
            ),
            Flexible(
                flex: 1,
                child: Container(
                  child: Center(
                      child: Text("Result = 0", style: TextStyle(color: Colors.red, fontSize: 20))
                  ),
                )
            ),
            Flexible(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      createRowButton(
                          buttonName1: "+",
                          buttonName2: "-",
                          onPressButton1: onPressButtonPlus,
                          onPressButton2: onPressButtonMinute
                      ),
                      createRowButton(
                          buttonName1: "*",
                          buttonName2: "/",
                          onPressButton1: onPressButtonMultiplication,
                          onPressButton2: onPressButtonDivide
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  /**
   * Row button
   *
   * @param String buttonName1
   * @param String buttonName2
   * @param Function()? onPressButton1
   * @param Function()? onPressButton2
   */

  Widget createRowButton({
    String buttonName1 = "",
    String buttonName2 = "",
    Function()? onPressButton1,
    Function()? onPressButton2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: onPressButton1, child: Text(buttonName1, style: TextStyle(fontSize: 25, fontFamily: "Roboto"))),
        ElevatedButton(onPressed: onPressButton2, child: Text(buttonName2, style: TextStyle(fontSize: 25, fontFamily: "Roboto"))),
      ],
    );
  }

  /**
   * Render TextField
   *
   * @param String? hintText
   * @param Icon? preFixIcon
   * @param TextEditingController? controller
   *
   * @return Widget
   */
  Widget createTextFieldWidget({
    String? hintText,
    Icon? preFixIcon,
    TextEditingController? controller
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: preFixIcon,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey)
          ),
        ),
      ),
    );
  }
}
