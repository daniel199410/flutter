import 'package:flutter/material.dart';

double addNumbers(double num1, double num2) => num1 + num2;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Material App'),);
  }

}