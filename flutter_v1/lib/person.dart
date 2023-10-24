void main() {
  Person personKim = Person();

  personKim.displayInfo();
  personKim.myName = '길동';
  personKim.phone = '010-1234-5678';
  personKim.age = 30;
  personKim.displayInfo();
}

// 클래스 설계
class Person {
  // dart 2.2 이후 부터는 nullable 타입이 있다.
  // String? -> null 가능. String -> null 불가능
  // 이전 버전에서는 모든 변수가 null 이 아닌 값으로 세팅되었다.
  // 명시적으로 null을 허용하는 여부를 표현할 수 있는 타입이 nullable 이다.
  String? myName;
  String? phone;
  int? age;

  void displayInfo() {
    print('Person name : $myName');
    print('Person phoneNumber : $phone');
    print('Person age : $age');
  }

}