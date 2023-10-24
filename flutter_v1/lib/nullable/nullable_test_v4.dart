class MyClass{
  late String name;

  MyClass() {
    // 주로 통신으로 데이터를 받아 값을 입력 할 때 late를 사용한다
    name = "길동";
  }

  void display() {
    print('name : $name');
  }
}

void main() {
  final myObject = MyClass();
  myObject.display();
}