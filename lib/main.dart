import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(NetSalaryCalculatorApp());
}

class NetSalaryCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Salary Calculator UK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
