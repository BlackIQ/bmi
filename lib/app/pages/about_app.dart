import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About app',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _page(),
    );
  }

  Widget _page() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Body Mass Index',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
              'Body mass index (BMI) is a value derived from the mass (weight) and height of a person. The BMI is defined as the body mass divided by the square of the body height, and is expressed in units of kg/m2, resulting from mass in kilograms and height in metres.',
            ),
          ],
        ),
      ),
    );
  }
}
