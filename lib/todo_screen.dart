



import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.add), ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ) ;
  }
}