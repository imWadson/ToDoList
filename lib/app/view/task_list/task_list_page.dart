import 'package:flutter/material.dart';
import 'package:todo_list/app/model/task.dart';
import 'package:todo_list/app/view/components/app_title.dart';
import 'package:todo_list/app/view/components/shape.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                Row(
                  children: const [Shape()],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/tasks-list-image.png',
                      width: 120,
                      height: 120,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: const AppTitle(
                          text: 'Completar tarefas', color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: const AppTitle(text: 'Tarefas'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.separated(
                itemCount: taskList.length,
                separatorBuilder: (_, __) => const SizedBox(
                  height: 16,
                ),
                itemBuilder: (_, index) => _TaskItem(taskList[index]),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _TaskItem extends StatelessWidget {
  const _TaskItem(this.task);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
        child: Row(
          children: [
            Icon(
              Icons.check_box_outline_blank,
              color: Theme.of(context).colorScheme.primary,
            ),
            Text(task.title),
          ],
        ),
      ),
    );
  }
}

final taskList = <Task>[
  Task('Aprender flutter'),
  Task('Aprender flutter'),
  Task('Aprender flutter'),
  Task('Aprender flutter'),
  Task('Aprender flutter'),
];
