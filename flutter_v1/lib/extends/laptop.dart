/// Laptop 클래스 설계 - name, color
/// MacBook 클래스 설계 (Laptop 상속) - 초기화 이니셜라이즈

class Laptop {
  String name;
  String color;

  Laptop(this.name, this.color);

  @override
  String toString() {
    return 'name : $name, color : $color';
  }
}

class MacBook extends Laptop {
  MacBook(String name, String color) : super(name, color){
    print('초기화 이니셜라이즈에 바디를 추가 할 수 있다.');
  }
}

void main() {
  MacBook buk = MacBook('macbook f10', '깔끔한 블랙');
}