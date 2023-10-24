import 'package:class_book_v1/screens/main_screen.dart';
import 'package:class_book_v1/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrot market',
      home: MainScreens(),
      theme: themeData(),
    );
  }
}
