import 'dart:convert';

void main() {
  // 여러줄 String 하려면 ''' 내용 '''

  String jsonStr = '''
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    }
  ''';

  // 1 단계
  // JSON 문자열 형식을 Map 구조로 파싱
  print('jsonMap : ${json.decode(jsonStr).runtimeType}');
  print('jsonMap : ${json.decode(jsonStr)}'); // json.decode를 사용해서 Map 구조로 변환한 결과
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    // print('key : $key');
    // print('value : $value');
    print('$key : $value');
  });
  Todo myTodo = Todo.fromJson(jsonMap);
  print(myTodo.title);
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"]
      , id = json["id"]
      , title = json["title"]
      , completed = json["completed"];
}
