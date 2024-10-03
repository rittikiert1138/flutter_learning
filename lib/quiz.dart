import 'package:flutter/material.dart';
import 'package:flutter_app/start_screen.dart';
import 'package:flutter_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "quiz-screen") {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.orangeAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
