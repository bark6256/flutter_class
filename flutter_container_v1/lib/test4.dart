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
        backgroundColor: Colors.white,
        body: SafeArea(
          // Stack 여러 자식 위젯을 겹치게 배치할 수 있게 하는 컨테이너 위젯이다.
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(width: 1, color: Colors.blue)),
                  child: Center(
                    child: Text(
                      "2:55:10",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
