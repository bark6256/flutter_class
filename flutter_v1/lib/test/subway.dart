class Subway {
  int lineNumber;
  int personCount;
  int money;

  Subway(this.lineNumber, this.personCount, this.money);

  // 승객을 태우다
  void takePerson(int money) {
    this.money += money;
    personCount++;
  }
  void showInfo() {
    print('호선 : $lineNumber');
    print('승객수 : $personCount');
    print('수익금 : $money');
  }
}