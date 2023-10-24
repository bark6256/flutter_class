import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // 모델 - 데이터를 함께 코드 작성  (MV패턴)
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('view model 패턴'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('간단한 예제'),
            Text('$_count', style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: () {
              setState(() {
                _count++;
              });
            }, child: Text('증가'))
          ],
        ),
      ),
    );
  }
}
