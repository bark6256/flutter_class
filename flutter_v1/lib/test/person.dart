import 'package:flutter_v1/test/subway.dart';

class Person {
  String name;
  int money;
  
  Person(this.name, this.money);
  
  // 지하철을 탄다
  void takeSubway(Subway takeSubway){
    money -= 1400;
    takeSubway.takePerson(1400);
  }
}