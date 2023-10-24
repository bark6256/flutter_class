void main() {
  String name = '야옹이'; // null이 아닌 문자열만 가질 수 있다.
  int age = 20; // null이 아닌 정수값만 가질 수 있다.

  String? nullableName; // 문자열 또는 null값을 가질 수 있다.
  int? nullableInt; // 정수값 또는 null값을 가질 수 있다.

  // null이 있을수 있기 때문에 방어적 코드가 필요하다
  if(nullableName != null) {
    print('name : $nullableName');
  }
}