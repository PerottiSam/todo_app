// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.white,
              checkColor: Colors.black,
              side: BorderSide(width: 1.0, color: Colors.white),
            ),

            //task name
            Text(
              taskName, 
              style: TextStyle(
                color: Colors.white,
                decoration: taskCompleted 
                    ? TextDecoration.lineThrough 
                    : TextDecoration.none,
                decorationColor: Colors.white
              )
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
