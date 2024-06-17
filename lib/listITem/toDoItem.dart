import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nahim_first_kamla/constants/colors.dart';
import 'package:nahim_first_kamla/listITem/actionMaintain.dart';

class ToDoitem extends StatelessWidget {
  final ToDo todo;
  final dynamic onToDoChange;
  final dynamic onToDoDelete;
  const ToDoitem({super.key, required this.todo, this.onToDoChange, this.onToDoDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box:Icons.check_box_outline_blank,
          color: mkBlue,
        ),
        title: Text(
          todo.todotext,
          style: TextStyle(
            color: mkBlack,
            fontSize: 16,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: mkRed,
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onToDoDelete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
