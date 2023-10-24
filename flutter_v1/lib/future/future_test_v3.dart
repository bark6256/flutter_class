void main() {
  Future<String> name = Future.value("비동기화");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("--------------------------");

  // Future 타입을 소화 시키는 두번째 방법
  // 방법 2 - 콜백 메서드 활용 Future.then(); 함수를 사용할 수 있다.
  name.then((v) => print("Future type 에서 값 꺼내기 : $v"));
  number.then((value) => print("값 확인 : $value"));
  isTrue.then((value) => print("값 확인 : $value"));
  print("-----------------------------");
}