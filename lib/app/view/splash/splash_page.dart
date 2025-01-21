import 'package:flutter/material.dart';
import 'package:todo_list/app/view/components/app_title.dart';
import 'package:todo_list/app/view/components/shape.dart';
import 'package:todo_list/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => TaskListPage(),
            ),
          );
        },
        child: Column(
          children: [
            Row(
              children: const [
                Shape(),
              ],
            ),
            const SizedBox(height: 79),
            Image.asset(
              'assets/images/onboarding-image.png',
              width: 180,
              height: 168,
            ),
            const SizedBox(height: 79),
            AppTitle(text: 'Lista de tarefas'),
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
      ),
    );
  }
}
