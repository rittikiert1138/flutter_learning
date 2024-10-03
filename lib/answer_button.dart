import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTab});

  final String answerText;
  final void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        backgroundColor: const Color.fromARGB(255, 226, 91, 113),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text(answerText),
    );
  }
}
