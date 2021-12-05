import 'package:bmicalculator/app/widgets/drawer/left_drawer.dart';
import 'package:bmicalculator/app/widgets/drawer/right_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Body Analyser',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: LeftDrawer(),
      endDrawer: RightDrawer(),
      body: _build(),
    );
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to Body analyser',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'BMI means Body Mass Index. One of the uses of BMI is to see do we have overweight or are we thin of other body health status',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'But how to see we are healthy or not. One of the ways is using this application.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Open left drawer and check the manual to know to use this app. If you want to have a quick start, open right drawer and open calculate BMI. If you already have your BMI or anyone else, again open right drawer and select Categorise the BMI.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
