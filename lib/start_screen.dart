import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn flutter is hell !!",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              // foregroundColor: Colors.red,
            ),
            icon: const Icon(Icons.arrow_right_outlined),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
