// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
    required this.startQuiz,
  }) : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300.0,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward_outlined),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
