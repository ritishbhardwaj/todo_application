



import 'package:flutter/material.dart';
import 'package:todo_application/add_todo_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    ) ;
  }
}