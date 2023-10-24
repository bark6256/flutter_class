class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  // 기능 - 이름은 동사부터 쓰는 것을 권장
  void changeGear(int gear) {
    currentSpeed = gear;

  }

  void showInfo() {
    print('color : $color');
    print('size : $size');
    print('currentSpeed : $currentSpeed');
  }

  Bicycle() {
    print('기본 생성자 호출');
  }
}