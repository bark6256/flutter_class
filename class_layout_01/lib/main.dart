import 'package:class_layout_01/components/favorited_wedget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // Theme 속성
    // 위젯 트리 내의 현재 위치에 대한 참조 및 핸들링 처리
    // 위젯 트리에 다양한 메타 데이터나 부모 위젯에 접근하게 하여
    // 상호 작용할 수 있도록 하는 BuildContest 객체
    Color color = Theme.of(context).primaryColor;
    // titleSection Start
    Widget titleSection = Container(
      padding: EdgeInsets.all(24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(bottom: 4),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          FavoritedWidget()
        ],
      ),
    );
    // titleSection End

    // _buildButtonColumn Start
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 4),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }
    // _buildButtonColumn End

    // buttonSection Start
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    // buttonSection End

    // textSection Start
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
    // textSection Start

    return MaterialApp(
      title: 'layout',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/lake.jpeg',
              width: 580,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
