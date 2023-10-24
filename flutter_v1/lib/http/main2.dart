import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Map<String, String> header = {};
  List<Todo> todos = [];
  var res = await fetchTodoList();
  if(res.statusCode == 200) {
    print('--- 통신 성공 ---');
    header = res.headers;
    print(res.headers.runtimeType);
    print('--------- httpBodyList ----------');
    print(res.body.runtimeType); // List<dynamic>
    List<dynamic> httpBodyList = jsonDecode(res.body);
    /*
        // 테스트 내용
        List<Map<String, dynamic>> httpBody = [];
        httpBodyList.forEach((e) {
          print(e.runtimeType); // _Map<String, dynamic>
          httpBody.add(e);
        });
        httpBody.forEach((e) {
          print('----------------');
          print(e['id']);
          print(e['title']);
        });
     */
    httpBodyList.forEach((e) {
      todos.add(Todo.fromJson(e));
    });
  } else {
    print('통신 실패');
  }
  print('--------------------------');
  print('todos 길이 : ${todos.length}'); // 200
  // todos.forEach((e) { print(e.toString()); }); // 길어서 짧게 대체
  for(int i = 0; i < 5 ; i++) {
    print(todos[i].toString());
  }

}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({required this.userId
    , required this.id
    , required this.title
    , required this.completed});

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map["userId"]
  , id = map["id"]
  , title = map["title"]
  , completed = map["completed"];

  @override
  String toString() {
    return "userId : $userId, id : $id, title : $title, completed : $completed";
  }
}
Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  final response = await http.get(Uri.parse(url));
  return response;
}