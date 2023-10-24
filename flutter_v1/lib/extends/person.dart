class Person {
  String? name;
  int? age;

  void display() {
    print('name : $name');
    print('age : $age');
  }
}

class Student extends Person {
  //부모에 있는 속성과 메서드를 물려 받는다.
  String? schoolName;
  String? schoolAddress;

  // @override
  void display() {
    print('name : $name');
    print('age : $age');
    print('schoolName : $schoolName');
    print('schoolAddress : $schoolAddress');
  }
}

void main() {
  Student student = Student();
  student.name = '만당';
  student.age = 27;
  student.schoolName = '볼리베어';
  student.schoolAddress = '마스터';
  student.display();
}