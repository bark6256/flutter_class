void main() async {
  var result = await addNumber1(10, 10);
  print("await 처리 result : $result");

  // 콜백 메서드 활용
  addNumber2(100, 100).then((value) => print("콜백 메서드 result : $value"));
}

// 동기적 방식
Future<int> addNumber1(int n1, int n2) async {
  var result = 0;
  await Future.delayed(const Duration(seconds: 2), () {
    result = n1 + n2;
  });
  return result;
}

// 콜백 메서드 방식
Future<int> addNumber2(int n1, int n2) {
  return Future.delayed(const Duration(seconds: 2), () => n1 + n2);
}