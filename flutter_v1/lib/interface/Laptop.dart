class Laptop {
  turnOn() {
    print('전원을 켭니다');
  }

  turnOff() {
    print('전원을 끕니다');
  }
}

class MacBook implements Laptop {
  @override
  turnOff() {
    print('맥북 전원을 켭니다');
  }

  @override
  turnOn() {
    print('맥북 전원을 끕니다');
  }
}

void main() {
  MacBook book = MacBook();
  book.turnOn();
  book.turnOff();
}
