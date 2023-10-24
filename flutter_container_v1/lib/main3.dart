import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("aa")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.cyan,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("item1"),
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: Text("item2"),
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: Text("item3"),
                padding: EdgeInsets.all(10),
              ),
            ]),
      ),
    ));
  }
}
