import 'package:class_carrot_market_v1/models/icon_menu.dart';
import 'package:class_carrot_market_v1/screens/my_carrot/components/card_icon_menu.dart';
import 'package:class_carrot_market_v1/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          CardIconMenu(iconMenuList: iconMenu1),
        ],
      ),
    );
  }
}