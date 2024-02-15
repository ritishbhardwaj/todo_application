



import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/add_todo_screen.dart';
import 'package:todo_application/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final todoList= ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> AddTODoScreen()));
        },
        child: Icon(Icons.add), ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        body: todoList.isEmpty ?const Center(
          child: Text("Well Done! You have completed all the task"),
        ): ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title:  Text(todoList[index].title!),
              trailing: IconButton(onPressed: (){},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),),
            );
          },
        )
    ) ;

  }
}