import 'package:flutter/material.dart';
import 'package:nahim_first_kamla/constants/colors.dart';
import 'package:nahim_first_kamla/listITem/toDoItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mkBGColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: mkBGColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          color: mkBlack,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('nahim.jpg'),
          ),
        ),
      ],
    ),
  );
}

Container _buildBody() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              prefixIcon: Icon(
                Icons.search,
                color: mkBlack,
                size: 23,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, minWidth: 25),
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: mkGrey),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: const Text(
                  'All TODO',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
               ToDoitem(),
              ToDoitem(),
              ToDoitem(),
              ToDoitem(),
            ],
          ),
        ),
      ],
    ),
  );
}
