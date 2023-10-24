void main() {
  var employee1 = Employee('길동', 30);
  employee1.display();
  print('------------------------');
  var employee2 = Employee('선생', 34, 'IT', 5000);
  employee2.display();
}

class Employee {
  String name;
  int age;
  String? subject;
  double? salary;

  // 1단계
  // 생성자 안에 [] : 옵션값. 받아도 되고 안 받아도 된다.
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2단계
  // 생성자 옵션에 기본값을 할당해 줄 수 있다.
  Employee(this.name, this.age, [this.subject = 'N/A', this.salary = 0.0]);

  void display() {
    print('name : ${this.name}');
    print('age : ${this.age}');
    print('subject : ${this.subject}');
    print('salary : ${this.salary}');
  }
}