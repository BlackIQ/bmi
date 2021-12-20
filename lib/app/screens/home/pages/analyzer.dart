import 'package:bmicalculator/app/screens/home/pages/1_underweight.dart';
import 'package:bmicalculator/app/screens/home/pages/2_healthy.dart';
import 'package:bmicalculator/app/screens/home/pages/3_overweight.dart';
import 'package:bmicalculator/app/screens/home/pages/4_obesity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiGetRange extends StatefulWidget {
  BmiGetRange({@required this.bmi});

  final bmi;

  @override
  _BmiGetRangeState createState() => _BmiGetRangeState();
}

class _BmiGetRangeState extends State<BmiGetRange> {
  @override
  Widget build(BuildContext context) {
    final bmi = widget.bmi;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Analyse BMI : ${widget.bmi}',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: _build(bmi),
    );
  }

  Widget _build(String bmi) {
    int _bmi = int.parse(bmi);
    if (_bmi <= 18.5) {
      return UnderWeight();
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return Healthy();
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return OverWight();
    } else if (_bmi >= 30) {
      return Obesity();
    } else {
      return Center(
        child: Text(
          'Invalid BMI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.indigo,
          ),
        ),
      );
    }
  }
}
