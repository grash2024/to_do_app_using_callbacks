import 'package:flutter/material.dart';
import 'package:to_do/functions/add_task.dart';
import 'package:to_do/tasks.dart';
import 'package:to_do/widgets/task_tile.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [];
  late String newTaskName;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'ToDoom',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                '${tasks.length} Tasks Left',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Expanded(
                child: TaskTile(
                  setStateCallback: () {
                    setState(() {});
                  },
                  task: tasks,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => AddTask(
                        onChange: (value) {
                          newTaskName = value ?? 'SomeThing Went Wrong';
                        },
                        onPress: () {
                          setState(() {
                            tasks.add(Task(taskName: newTaskName));
                            Navigator.pop(context);
                          });
                        },
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.secondary),
                  ),
                  child: Text(
                    'ADD',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
