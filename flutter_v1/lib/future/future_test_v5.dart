import 'package:http/http.dart' as http;
void main() {
  fetchTodo().then((res) {
    print('http status code : ${res.statusCode}');
    print('http Message body : ${res.body}');
  });

  // 잘 작동하지만 결과로 나오는 값이 길어서 임시로 주석 처리
  // fetchTodoList().then((res) {
  //   print('http status code : ${res.statusCode}');
  //   print('http Message body : ${res.body}');
  // });
}

// 함수 설계
Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  var response = await http.get(Uri.parse(url));
  return response;
}

// 함수 설계
Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  var response = await http.get(Uri.parse(url));
  return response;
}