import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bmiCalculate extends StatefulWidget {
  @override
  _bmiCalculateState createState() => _bmiCalculateState();
}

class _bmiCalculateState extends State<bmiCalculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculate your BMI',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _build(),
    );
  }

  Widget _build() {
    return Center(
      child: Text(
        'BMI',
      ),
    );
  }
}
