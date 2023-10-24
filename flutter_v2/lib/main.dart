import 'package:flutter/material.dart';

void main() {
  // 전달되는 위젯을 애플리케이션의 루트 위젯으로 만들어 준다.
  runApp(
    // 자식 위젯을 화면의 중앙에 배치
    // center -> text 위젯이 자식이다.
    Center(
      // text : 화면에 문자열을 표시하는 위젯
      // textDirection : 글자를 읽는 방향을 결정(왼쪽 오른쪽)
      child: Text('hello, World', textDirection: TextDirection.ltr),
    ),
  );
}
