import 'package:bmicalculator/app/bmipages/analyzer.dart';
import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/field/field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categorise extends StatefulWidget {
  @override
  _CategoriseState createState() => _CategoriseState();
}

class _CategoriseState extends State<Categorise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Analyse the BMI',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _build(),
    );
  }

  final TextEditingController _bmi = TextEditingController();

  void startAnalyse() {
    Navigator.of(context).push(
      MaterialPageRoute(
        // fullscreenDialog: true,
        builder: (context) => BmiGetRange(bmi: _bmi.text),
      ),
    );
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'BMI calculator',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Here is the place that you can enter BMI and see you are in with category.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25),
            BmiField(
              controller: _bmi,
              label: 'Enter the BMI',
              hint: 'Value should be integer (15) or double (15.6)',
            ),
            SizedBox(height: 15),
            BmiSubmitButton(
              submit: startAnalyse,
              text: 'Analyse',
            ),
          ],
        ),
      ),
    );
  }
}
