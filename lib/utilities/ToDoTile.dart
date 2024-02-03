// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ToDotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;

  Function(bool?)? onChanged;

  ToDotile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
