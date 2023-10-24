import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Map<String, String> header = {};
  Todo? todo;
  var res = await fetchTodo();
  if(res.statusCode == 200) {
    print('--- 통신 성공 ---');
    header = res.headers;
    print(res.headers.runtimeType);
    print('----------- httpBody ---------');
    print(res.body.runtimeType);
    Map<String, dynamic> httpBody = json.decode(res.body);
    print(httpBody.runtimeType); // Map<String, dynamic>
    print(httpBody.toString());

    print('----------- Todo -------------');
    todo = Todo.fromJson(httpBody);
    print(todo.toString());
  } else {
    print('통신 실패');
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
Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
}