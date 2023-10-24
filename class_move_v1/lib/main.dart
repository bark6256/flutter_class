import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 시작 페이지로 FirstPAge 사용
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 버튼 눌럿을 때 Navigator를 사용해 페이지 이동 처리
            Navigator.of(context).push(
              _showDialog(context)
//              MaterialPageRoute(builder: (context) => SecondPage())
            );
          },
          child: Text("Go to SecondPage"),
        ),
      ),
    );
  }
  _showDialog(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("팝업창 제목"),
        content: Text("팝업 내용 입니다."),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("닫기"))
        ],
      );
    });
  }
} // end of FirstPage

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Go to FirstPage"),
        ),
      ),
    );
  }
}
