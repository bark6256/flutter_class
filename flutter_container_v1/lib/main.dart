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
        appBar: AppBar(
          title: Text("hi"),
        ),
        body: MyContainer(),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity, // 가로 넓이를 화면 전체로 늘리고 싶을때 사용
      width: 200,
      height: 200,
      child: Container(
          color: Colors.cyan,
          child: Center(
            child: Text(
              "Container",
              textDirection: TextDirection.ltr,
            ),
          )),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(20, 100, 30, 30),
      // 주의할 점 : BoxDecoration을 감싸는 컨테이너 위젯에 color가 선언이 되어 있다면 에러 발생
      decoration: BoxDecoration(
        color: Colors.green.shade300,
        border: Border.all(
            color: Colors.deepOrangeAccent, width: 5, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.amberAccent,
            offset: Offset(0.5, 0.5),
            blurRadius: 10.0,
          ),
          BoxShadow(
            color: Colors.deepPurpleAccent,
            offset: Offset(-10, -10),
            blurRadius: 10.0,
            spreadRadius: 10
          ),
        ],
      ),
    );
  }
}
