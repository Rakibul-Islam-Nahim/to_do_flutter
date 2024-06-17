import 'package:flutter/material.dart';
import 'package:nahim_first_kamla/constants/colors.dart';
import 'package:nahim_first_kamla/listITem/actionMaintain.dart';
import 'package:nahim_first_kamla/listITem/navBar.dart';
import 'package:nahim_first_kamla/listITem/toDoItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.toDoList();
  List<ToDo> _foundResult = [];
  final textControler = TextEditingController();

  @override
  void initState() {
    _foundResult = todoList;
    super.initState();
  }

  void _runFileter(String search) {
    List<ToDo> result = [];
    if (search.isEmpty) {
      result = todoList;
    } else {
      result = todoList.where((item)=>item.todotext!.toLowerCase().contains(search.toLowerCase())).toList();
    }
    setState(() {
      _foundResult = result;
    });
  }

  void _todoChangeState(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _todoDeleteItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String task) {
    setState(() {
      todoList.add(ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todotext: task));
    });
    textControler.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hackBlack,
      drawer: NavBar(),
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    decoration: BoxDecoration(
                      color: hackGreen,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: textControler,
                      decoration: const InputDecoration(
                        hintText: 'Add a New Todo Item',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      _addToDoItem(textControler.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hackGreen,
                      minimumSize: const Size(60, 60),
                      elevation: 10,
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: hackBlack,
      iconTheme: const IconThemeData(color: hackGreen),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
              color: hackGreen,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              onChanged:(value) => _runFileter(value),
              decoration: const InputDecoration(
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
                      color: hackGreen
                    ),
                  ),
                ),
                for (ToDo todoEach in _foundResult)
                  ToDoitem(
                    todo: todoEach,
                    onToDoChange: _todoChangeState,
                    onToDoDelete: _todoDeleteItem,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
