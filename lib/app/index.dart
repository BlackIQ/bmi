import 'package:bmicalculator/app/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';

class bmiCalculator extends StatefulWidget {
  @override
  _bmiCalculatorState createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: bmiDrawer(),
      body: _build(),
    );
  }

  Widget _build() {
    return Center(
      child: Text(
        'BMI Calculatpr'
      ),
    );
  }
}
