import 'package:flutter/material.dart';
import 'package:todoey/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todoey',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: GradientContainer(
        firstColor: const Color.fromARGB(255, 48, 1, 58),
        secondColor: const Color.fromARGB(255, 125, 12, 148),
      ),
    );
  }
}
