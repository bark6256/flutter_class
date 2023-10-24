import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // 1. 생성자 - 인스턴스가 생성
  const MyApp({super.key});

  // 2. 새로운 State 객체 생성
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;
  @override
  void initState() {
    super.initState();
    print("initState() 호출 - 3");
  }

  // 호출 시점 2가지
  // 1. initState() 호출 후에 자동으로 한번 호출
  // 2. 위젯이 사용하는 데이터가 변경이 되면 자동으로 한번 호출
  // 단, BuildContext의 종속성(Theme, locale)이나 부모 위젯이 연관덴 데이터를 의미
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies() 호출 - 4");
  }

  // 화면을 그릴 때 호출. 여러 상황에서 호출 될 수 있다.
  // 상태가 변경되어 화면을 다시 그릴때나,
  // 부모 위젯이 변경되었을때, 테마나 디바이스에 화면 방향이 변경될 때 등.
  @override
  Widget build(BuildContext context) {
    print("build() 호출 - 5");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _count;
                print("Tap 클릭");
              });
            },
            child: Text(
              '반가워 ${_count}',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }

  // 상태가 변경 될 때 마다 호출 또는 해당 함수 호출시
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("setState() 호출 - 6");
  }

  // 부모 위젯이 변경되어 현재 위젯의 설정이 변경 되어야 할 때 호출
  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget() 호출 - 7");
  }

  // State 객체가 위젯 트리에서 제거 될 때 호출
  // 리소스 해제와 같은 작업을 추가합니다.
  @override
  void dispose() {
    super.dispose();
    print("dispose() 호출 - 8");
  }
}
