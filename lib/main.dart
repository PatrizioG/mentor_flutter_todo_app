import 'package:flutter/material.dart';
import 'package:mentor_flutter_todo_app/reorderable_todo_list.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          decoration: BoxDecoration(
              color: const HSLColor.fromAHSL(1, 235, 0.21, 0.11).toColor()),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset("images/bg-desktop-dark.jpg"),
              ),
              Column(
                children: [
                  const Center(
                    child: Text(
                      "TODO",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const HSLColor.fromAHSL(1, 234, 0.11, 0.52)
                            .toColor()),
                    child: TextField(
                      onSubmitted: (value) {
                        items.add(value);
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                          icon: Icon(Icons.circle_outlined),
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                      width: 300,
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const HSLColor.fromAHSL(1, 234, 0.11, 0.52)
                              .toColor()),
                      child: ReorderableTodoList(items))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// check background
// BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: [
//                         const HSLColor.fromAHSL(1, 192, 1, 0.67).toColor(),
//                         const HSLColor.fromAHSL(1, 280, 0.87, 0.65).toColor()
//                       ])),