import 'package:flutter/material.dart'; // Google

void main() {
  // MyStateLessApp 을 애플리케이션 루트로 설정하고 실행한다
  runApp(MyStatefulApp());
}

// MyStatefulApp
class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({super.key});

  // createState() 메서드는 state 객체를 생성한다.
  // 즉, State 객체가 있따 -> StatefulWidget
  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
} // MyStatefulApp

class _MyStatefulAppState extends State<MyStatefulApp> {
  int _counter = 0;

  // 메서드
  void _incrementCounter() {
    // setState : StatefulWidget과 함께하고, 상태값 변경을 build에 알려줘 화면을 다시 그리게 한다
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build 메서드 호출 확인');
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('count : $_counter'),
          )
        ),
      ),
    );
  }
} // _MyStatefulAppState
