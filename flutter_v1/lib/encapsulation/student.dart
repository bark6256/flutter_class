class Student {
  // 이름, 나이 -> private
  String? _name;
  int? _age;
  // 축약형 Getter, Setter
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get age => _age;
  set age(int? age) => _age = age;
}