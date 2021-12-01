import 'package:bmicalculator/app/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: bmiCalculator(),
    );
  }
}
