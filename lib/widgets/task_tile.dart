import 'package:flutter/material.dart';
import 'package:to_do/tasks.dart';

class TaskTile extends StatelessWidget {
  final List<Task> task;
  final Function() setStateCallback;
  const TaskTile(
      {super.key, required this.task, required this.setStateCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: task.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xff443C68),
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  onLongPress: () {
                    task.removeAt(index);
                    setStateCallback();
                  },
                  title: Text(task[index].taskName),
                ),
              ),
              Checkbox(
                fillColor: const MaterialStatePropertyAll(
                  Color(0xff635985),
                ),
                value: task[index].taskDone,
                onChanged: (value) {
                  task[index].taskStatus();
                  setStateCallback();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
