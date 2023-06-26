import 'package:flutter/material.dart';

class ToDoListItem extends StatelessWidget {
  const ToDoListItem({
    super.key,
    required this.iconData,
    required this.text,
  });
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(iconData),
          )),
      title: Text("Comments"),
      trailing: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.blueGrey),
      ),
    );
  }
}
