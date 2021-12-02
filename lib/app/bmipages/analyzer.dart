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
          'Analyse BMI',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _build(bmi),
    );
  }

  Widget _build(String bmi) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'BMI : $bmi',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
