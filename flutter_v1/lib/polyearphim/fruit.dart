class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo() {
    print('상품명 : $name');
    print('가격 : $price');
  }
}

class Peach extends Fruit {
  Peach(super.name, super.price);
}

class Banana extends Fruit {
  String origin;

  Banana(super.name, super.price, this.origin);
}

void main() {
  // 업캐스팅, 다운캐스팅
  List<Fruit> fruits = [Banana('델몬트', 3000, '필리핀'), Peach('천도', 5000)];
  fruits[0].name;
  fruits[0].price;
  fruits[0].showInfo(); // 업캐스팅
  // fruits[0].origin; // 컴파일 시점에 선언된 데이터 타입 까지만 확인할 수 있다.

  // 업 캐스팅 상태 Banana의 origin변수에 접근하는 방법
  // 컴파일 시점에 형변환 처리를 하면 된다.
  // Banana banana1 = ((Banana) fruits[0]).origin; java에서 다운캐스팅 했던 방법
  Banana banana1 = fruits[0] as Banana; // as : 상속 관계에서 형 변환 처리
  banana1.origin; // 다운캐스팅 상태
}
