class Person {
  String? name;
  int? age;
  String? phone;

  // 기본 생성자 직접 작성
  Person(this.name, this.age); // dart에서 권장하는 기본 생성자 스타일
  // Person(this.name, this.age, this.phone); // dart는 생성자 오버로드가 불가능 -> 명명된 생성자로 비슷한 기능 가능

  /* java에서 사용하는 기본생성자 스타일
    Person(String name, int age) {
    this.name = name;
    this.age = age;
  }*/

  // 명명된 생성자
  Person.fromBirthYear(String name, int birthYear) {
    this.name = name;
    // this.age = birthYear;

    // 나이를 계산해서 입력하고 싶다.
    this.age = DateTime.now().year - birthYear;
  }

}

void main() {
  Person person1 = Person('길동', 30);
  var person2 = Person('순신', 32);

  print(person1.runtimeType);
  print(person2.runtimeType);

  var person3 = Person.fromBirthYear('야스오', 1992);
  print(person3);
  print(person3.age);

}

