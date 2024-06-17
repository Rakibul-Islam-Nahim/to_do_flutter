import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nahim_first_kamla/constants/colors.dart';

class ToDoitem extends StatelessWidget {
  const ToDoitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 10),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: mkBlue),
        title: Text(
          'Check box',
          style: TextStyle(
            color: mkBlack,
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: mkRed,
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
