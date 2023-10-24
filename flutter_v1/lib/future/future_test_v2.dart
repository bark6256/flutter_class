
void main() async {
  Future<String> name = Future.value("turtle");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);

  // Future 타입을 처리하는 방법
  // 1. 동기적으로 처리
  print(await name);
  print(await number);
  print(await isTrue);


}
