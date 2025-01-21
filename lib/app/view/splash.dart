import 'package:flutter/material.dart';
import 'package:todo_list/app/view/task_list.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/shape.png',
                width: 141,
                height: 129,
              ),
            ],
          ),
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(height: 79),
          Text(
            'Lista de Tarefas',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TaskListPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 21),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'A melhor forma de não se esquecer de nada é anotando. Guarde suas tarefas e vá completando aos poucos para aumentar sua produtividade',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
