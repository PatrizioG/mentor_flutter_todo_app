import 'package:flutter/material.dart';

class ReorderableTodoList extends StatefulWidget {
  final List<String> items;
  const ReorderableTodoList(this.items, {super.key});
  @override
  State<ReorderableTodoList> createState() => _ReorderableTodoListState();
}

class _ReorderableTodoListState extends State<ReorderableTodoList> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: <Widget>[
        for (int index = 0; index < widget.items.length; index += 1)
          ListTile(
            key: Key('$index'),
            title: Text('Item ${widget.items[index]}'),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final String item = widget.items.removeAt(oldIndex);
          widget.items.insert(newIndex, item);
        });
      },
    );
  }
}
