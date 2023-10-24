import 'package:flutter_v1/test/person.dart';
import 'package:flutter_v1/test/subway.dart';

void main() {
  Subway line1 = Subway(1, 0, 0);
  Subway line2 = Subway(2, 0, 0);

  Person person1 = Person('티모', 10000);

  person1.takeSubway(line1);
  line1.showInfo();
  line2.showInfo();
  print('---------------------');

  Person person2 = Person('트리스타나', 8000);
  person2.takeSubway(line1);
  line1.showInfo();
  line2.showInfo();
}