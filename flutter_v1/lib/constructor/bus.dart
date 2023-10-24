class Bus {
  int busNumber;
  int personCount;
  int money;
  int fee = 1300;

  Bus(this.busNumber, this.personCount, this.money);

  void take() {
    money += fee;
    personCount++;
  }

  void getOff() {
    personCount--;
  }

  void showInfo(){
    print('버스 번호 : $busNumber');
    print('승객수 : $personCount');
    print('수익금 : $money');
  }
}

class Student {
  String name;
  int money;
  Bus? boardingBus;
  String now = '도보';

  Student(this.name, this.money);
  void takeBus(Bus bus) {
    if(now == '도보') {
      if(money >= bus.fee){
        money -= bus.fee;
        bus.take();
        boardingBus = bus;
        now = '${bus.busNumber}번 버스';
        print('${bus.busNumber}번 버스에 탑승');
      } else { // 잔액 부족
        print('소지금이 부족합니다.');
      }
    } else { // 현재 위치 확인.
      print('도보 상태에서만 탑승이 가능합니다.');
    }
  }

  void getOffBus() {
    if(now != '도보'){
      boardingBus!.getOff();
      boardingBus = null;
      now = '도보';
      print('버스에서 내렷습니다.');
    } else {
      print('버스에 탑승하고 있지 않습니다.');
    }
  }

  void showInfo() {
    print('이름 : $name');
    print('소지금 : $money');
    print('위치 : $now');
  }
}

void main() {
  Bus bus1 = Bus(100, 0, 0);
  Bus bus2 = Bus(200, 0, 0);

  Student student1 = Student('길동', 5000);
  Student student2 = Student('우너', 7000);

  student1.takeBus(bus1);
  student2.takeBus(bus2);
  student2.getOffBus();
  student2.takeBus(bus1);

  print('--------------------');
  bus1.showInfo();
  bus2.showInfo();

}