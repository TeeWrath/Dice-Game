import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice Game'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Colors.black,
        ),
      ),
    );
  }
}
