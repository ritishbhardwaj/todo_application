


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/constant.dart';
import 'package:todo_application/todo.dart';
import 'package:todo_application/todo_provider.dart';

class AddTODoScreen extends ConsumerWidget {
  AddTODoScreen({super.key});

  final todoController=TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: todoController,
              decoration: InputDecoration(
                hintText: "What Needs to be done?",
              ),
          ),
        ),

        SizedBox(
          
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorList.length,
            itemBuilder: (context,index){
              return GestureDetector(

                onTap: (){
                  //setting priority type
                  log("message");
                },

                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorList[index],
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )
                    ),
                    
                ),
              );
            },
            
            ),
        ),
        ElevatedButton(onPressed: (){
            final todo = Todo(
              title: todoController.text,
              id : DateTime.now().millisecondsSinceEpoch.toString(),
              isDone:false,
              priority: 1

            );
            ref.read(todoProvider.notifier).addTodo(todo);
            todoController.clear();
        }, child: Text("AddTodo"))
      ]
      ),
    );
  }
}