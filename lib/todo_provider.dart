import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/todo.dart';





class TodoProvider extends StateNotifier<List<Todo>>{

  TodoProvider() : super([]);

  void addTodo(Todo todo){
    state=[...state,todo];    // this is spread operator  
  }
  void removeTodo(Todo todo){
    state=state.where((element) => element.id!= todo.id).toList();
  }

}

final todoProvider = StateNotifierProvider<TodoProvider,List>((ref) => TodoProvider());