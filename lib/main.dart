import 'package:flutter/material.dart';
import 'package:hello_world/gradient_color.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientColor(
            Color.fromARGB(255, 169, 206, 255),
            Color.fromARGB(255, 19, 254, 179),),
      ),
    ),
  );
}