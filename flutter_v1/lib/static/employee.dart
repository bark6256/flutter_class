class Employee {
  String? name;
  int? employeeNumber;
  static int id = 1;

  Employee(String name) {
    this.name = name;
    employeeNumber = id;
    id++;
  }

  void displayInfo(){
    print('이름 : $name');
    print('사원 번호 : $employeeNumber');
  }
}

void main() {
  // 객체 생성없이 class를 통해 static 변수에 직접 접근이 가능하다
  print('현재 id : ${Employee.id}');

  Employee employee1 = Employee('바람');
  Employee employee2 = Employee('티버');
  Employee employee3 = Employee('성냥');
  employee1.displayInfo();
  employee2.displayInfo();
  employee3.displayInfo();
}
