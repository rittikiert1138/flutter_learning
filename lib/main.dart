import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 240, 102),
        body: GradientContainer(
            Color.fromARGB(255, 36, 207, 30), Color.fromARGB(255, 92, 34, 201)),
      ),
    );
  }
}
