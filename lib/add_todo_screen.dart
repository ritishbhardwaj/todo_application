


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_application/constant.dart';

class AddTODoScreen extends StatelessWidget {
  const AddTODoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
        )
      ]
      ),
    );
  }
}