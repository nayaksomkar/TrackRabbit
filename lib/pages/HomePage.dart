// ignore_for_file: file_names

import 'package:TrackRabbit/utilities/ToDoTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //todo tasks
  List ToDoList = [
    [
      'task 1',
      false,
    ],
    [
      'task 2',
      false,
    ],
    [
      'task 3',
      false,
    ],
    [
      'task 4',
      false,
    ]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      ToDoList[index][1] = !ToDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'TrackRabbit',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: ToDoList.length,
        itemBuilder: (context, index) {
          return ToDotile(
              taskName: ToDoList[index][0],
              taskCompleted: ToDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
