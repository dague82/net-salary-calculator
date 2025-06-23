import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Salary Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Net Salary Calculator'),
        ),
        body: Center(
          child: Text('Bienvenido a tu calculadora de salario'),
        ),
      ),
    );
  }
}
