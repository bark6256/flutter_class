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
        body: Container(
          width: 200,
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // 정렬 할 공간이 있어야 정렬이 된다. 컨테이너의 가로 길이가 최소인 상태
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("item1"),
              Text("item2"),
              Text("item3"),
            ],
          ),
        ),
      )
    );
  }
}
