import 'package:flutter/material.dart';

class SelfEmployedSalaryInput extends StatefulWidget {
  final Function(String) onResult;

  SelfEmployedSalaryInput({required this.onResult});

  @override
  _SelfEmployedSalaryInputState createState() =>
      _SelfEmployedSalaryInputState();
}

class _SelfEmployedSalaryInputState extends State<SelfEmployedSalaryInput> {
  final TextEditingController _incomeController = TextEditingController();

  void _calculateNetIncome() {
    final double? gross = double.tryParse(_incomeController.text);
    if (gross != null) {
      // Ejemplo simple para self-employed: restamos 25% (impuestos + gastos)
      final double net = gross * 0.75;
      widget.onResult('Net Self-Employed Income: £${net.toStringAsFixed(2)}');
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
          controller: _incomeController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter gross annual income (self-employed)',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _calculateNetIncome,
          child: Text('Calculate Self-Employed Income'),
        ),
      ],
    );
  }
}
