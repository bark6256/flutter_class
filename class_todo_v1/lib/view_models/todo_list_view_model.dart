import '../models/todo_item.dart';

class TodoListViewModel {
  List<TodoItem> _items = [TodoItem(title: 'view 생성', isDone: true)];

  // getter
  List<TodoItem> get items => _items;

  void addItem(String title) {
    _items.add(TodoItem(title: title, isDone: false));
  }
  // 보통 CRUD를 여기서 작성

  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }


}
