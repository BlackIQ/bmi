import 'package:bmicalculator/app/pages/bmipages/analyzer.dart';
import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/field/field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculate extends StatefulWidget {
  @override
  _BmiCalculateState createState() => _BmiCalculateState();
}

class _BmiCalculateState extends State<BmiCalculate> {
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

  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();

  bool calculated = false;
  String bmiCalculated = '';

  void calculate() {
    var height = int.parse(_height.text);
    var weight = int.parse(_weight.text);
    var bmi = (weight / (height * height)) * 10000;
    setState(() {
      calculated = true;
      bmiCalculated = bmi.toString();
      _height.clear();
      _weight.clear();
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
              'BMI calculator',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Body mass index (BMI) is a value derived from the mass (weight) and height of a person. The BMI is defined as the body mass divided by the square of the body height, and is expressed in units of kg/m2, resulting from mass in kilograms and height in metres.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25),
            BmiField(
              controller: _height,
              label: 'Enter your height',
              hint: 'Value should be in Meter',
            ),
            SizedBox(height: 15),
            BmiField(
              controller: _weight,
              label: 'Enter your weight',
              hint: 'Value should be in Kilogram',
            ),
            SizedBox(height: 15),
            BmiSubmitButton(
              submit: calculate,
              text: 'Calculate',
            ),
            SizedBox(height: 50),
            calculated
                ? Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your BMI is $bmiCalculated.',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        Text(
                          'Open drawer and choose Range BMI. Enter your BMI to analyse the BMI.',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.indigo,
                          ),
                        ),
                        SizedBox(height: 25),
                        ElevatedButton(
                          child: Text(
                            'Go to analyse my BMI',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                // fullscreenDialog: true,
                                builder: (context) => BmiGetRange(bmi: bmiCalculated),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                : Text(
                    'To see your BMI, fill these blanks.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
