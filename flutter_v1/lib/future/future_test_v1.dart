// await 키워드를 가지는 함수는 선언부에 async를 선언 해주어야 한다
void main() async {
  // 동기성 - 모든 코드가 반드시 순차적으로 실행
  // 비동기성 - 코드가 동시 다발적으로 실행, 순차적으로 보장을 할 수 없는 상태

  print("task 1 .....");
  var data1 = await fetchData(); // 기대 값 : "2초 data"
  // Instance of 'Future<String>' 미래타입
  print(data1);
  print("task 2 .....");
  print("task 3 .....");
}

Future<String> fetchData() {
  // 2초 뒤에 실행하는 코드를 작성
  return Future.delayed(const Duration(seconds: 2), () => "2초 data" );
}
