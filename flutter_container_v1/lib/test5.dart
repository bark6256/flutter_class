import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Stack 여러 자식 위젯을 겹치게 배치할 수 있게 하는 컨테이너 위젯이다.
          child: SingleChildScrollView(
            //단 하나의 자식만 가질 수 있다.
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.orangeAccent,
                ),
                Container(
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  height: 300,
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  height: 400,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
