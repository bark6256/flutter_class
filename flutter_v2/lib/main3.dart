import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
} // end of MyApp

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector Example"),
      ),
      body: Center(
        // GestureDetector : 다양한 제스처를 감지할 수 있다.
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Tapped"),
              ),
            );
          },
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Long Pressed"),
              ),
            );
          },
        ),
      ),
    );
  }
}
