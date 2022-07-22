import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

//state object
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.indigo,
                child: Text(
                    "View A",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20)
                )
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.orange,
                child: Text(
                    "View B",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20)
                )
            ),
            Expanded(
              child: Container(
                  constraints: BoxConstraints.expand(),
                  color: Colors.purple,
                  child: Text(
                      "View C",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20)
                  )
              ),
            ),
          ],
        )
      ),
    );
  }
}

