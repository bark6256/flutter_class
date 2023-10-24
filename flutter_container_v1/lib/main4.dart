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
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.lightGreenAccent,
                width: double.infinity,
                height: 400,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.tealAccent,
                width: double.infinity,
                height: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
