abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal {
  // 메모리에 Animal(부모 클래스)이 먼저 올라가야 한다.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이/가 멍멍 합니다.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이/가 야옹 합니다.');
  }
}

void main() {
  // 리스트에 객체 넣기
  Dog dog1 = Dog('둑이');
  Dog dog2 = Dog('똘이');
  Cat cat1 = Cat('개냥이');
  List<Animal> animals = [dog1, dog2, cat1];
  // 반복문으로 실행
  for(var a in animals){
    a.makeSound();
  }
}
