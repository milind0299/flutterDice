import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 94, 86, 113),
          Color.fromARGB(255, 110, 63, 218),
        ]),
      ),
    ),
  );
}
