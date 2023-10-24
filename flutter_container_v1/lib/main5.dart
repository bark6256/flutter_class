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
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text("1"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text("2"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text("3"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
