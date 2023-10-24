import 'package:flutter/material.dart';

void main() {
  runApp(ParentWidget());
}

// 부모 위젯
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int _count = 0;

  void _handleChildButtonPressed() {
    setState(() {
      print('자식에게 전달 할 함수');
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("count ${_count}"),
                ChildWidget(_handleChildButtonPressed),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 1. 자식 객체 생성 시 매개체가 될 매개변수를 받게 설계한다.
class ChildWidget extends StatelessWidget {
  final VoidCallback onButtonPressed;
  // 생성자
  const ChildWidget(this.onButtonPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonPressed,
      child: Text('press'),
    );
  }
}
