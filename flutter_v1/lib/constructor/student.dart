class Student {
  String name;
  int age;
  int rollNumber;

  // 1단계
  /*
    Student(String name, int age, int rollNumber) {
      this.name = name;
      this.age = age;
      this.rollNumber = rollNumber;
    }
  */

  // 2단계
  // 생성자가 반드시 변수 값을 넣어주기 때문에 nullable 타입이 아니어도 된다.
  Student(this.name, this.age, this.rollNumber);

}
