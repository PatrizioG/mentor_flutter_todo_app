import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
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
                    color:
                        const HSLColor.fromAHSL(1, 234, 0.11, 0.52).toColor())
              ],
            )
          ],
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