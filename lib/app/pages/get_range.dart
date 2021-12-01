import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/field/field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bmiGetRange extends StatefulWidget {
  bmiGetRange({@required this.bmi});
  final bmi;

  @override
  _bmiGetRangeState createState() => _bmiGetRangeState();
}

class _bmiGetRangeState extends State<bmiGetRange> {
  @override
  Widget build(BuildContext context) {
    final bmi = widget.bmi;

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

  final TextEditingController _bmi = TextEditingController();

  void categorise() {
    setState(() {
      _bmi.clear();
    });
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Enter the BMI to set the category',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "A common use of the BMI is to assess how far an individual's body weight departs from what is normal or desirable for a person's height. The weight excess or deficiency may, in part, be accounted for by body fat (adipose tissue) although other factors such as muscularity also affect BMI significantly (see discussion below and overweight).[10]",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25),
            bmiField(
              controller: _bmi,
              label: 'Enter the BMI',
              hint: 'Enter or paste the number',
            ),
            SizedBox(height: 15),
            bmiSubmitButton(
              submit: categorise,
              text: 'Categorise',
            ),
          ],
        ),
      ),
    );
  }
}
