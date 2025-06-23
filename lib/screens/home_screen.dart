import 'package:flutter/material.dart';
import '../widgets/employee_salary_input.dart';
import '../widgets/self_employed_salary_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _result = '';

  void _updateResult(String result) {
    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Net Salary Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmployeeSalaryInput(onResult: _updateResult),
              SizedBox(height: 30),
              SelfEmployedSalaryInput(onResult: _updateResult),
              SizedBox(height: 30),
              Text(
                _result,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
