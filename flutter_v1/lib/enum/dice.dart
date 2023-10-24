import 'dart:math';
enum DICE { one, two, three, four, five, six}
// 주사위 게임 제작
// 1. 주사위 숫자는 열거형(enum)
// 2. dart:math; 랜덤 변수 생성
// 3. switch 구문 활용해 매칭
void main() {
  Random random = Random();
  int randomNum = random.nextInt(6);
  List<DICE> diceEnum = DICE.values;

  switch(diceEnum[randomNum]) {
    case DICE.one:
      print('나온 숫자 : ${DICE.one}');
      break;
    case DICE.two:
      print('나온 숫자 : ${DICE.two}');
      break;
    case DICE.three:
      print('나온 숫자 : ${DICE.three}');
      break;
    case DICE.four:
      print('나온 숫자 : ${DICE.four}');
      break;
    case DICE.five:
      print('나온 숫자 : ${DICE.five}');
      break;
    case DICE.six:
      print('나온 숫자 : ${DICE.six}');
      break;
    default:
      print('오류 발생');
  }
}