import 'package:bmicalculator/app/widgets/drawer/left_drawer.dart';
import 'package:bmicalculator/app/widgets/drawer/right_drawer.dart';
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
      drawer: leftDrawer(),
      endDrawer: rightDrawer(),
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
