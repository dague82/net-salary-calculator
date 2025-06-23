import 'package:flutter/material.dart';

class EmployeeSalaryInput extends StatefulWidget {
  final Function(String) onResult;

  EmployeeSalaryInput({required this.onResult});

  @override
  _EmployeeSalaryInputState createState() => _EmployeeSalaryInputState();
}

class _EmployeeSalaryInputState extends State<EmployeeSalaryInput> {
  final TextEditingController _salaryController = TextEditingController();

  void _calculateNetSalary() {
    final double? gross = double.tryParse(_salaryController.text);
    if (gross != null) {
      // Ejemplo simple: se resta 20% de impuestos
      final double net = gross * 0.8;
      widget.onResult('Net Employee Salary: £${net.toStringAsFixed(2)}');
    } else {
      widget.onResult('Please enter a valid number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _salaryController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter gross annual salary (employee)',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _calculateNetSalary,
          child: Text('Calculate Employee Salary'),
        ),
      ],
    );
  }
}
