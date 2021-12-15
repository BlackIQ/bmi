import 'package:bmicalculator/app/bmipages/analyzer.dart';
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
  String newNumber = '';

  void calculate() {
    var height = int.parse(_height.text);
    var weight = int.parse(_weight.text);
    var bmi = (weight / (height * height)) * 10000;
    setState(() {
      int intBmi = bmi.toInt();
      calculated = true;
      bmiCalculated = intBmi.toString();
      newNumber = (intBmi + 1).toString();
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
              'The main feature of of this application is calculating your Body Mass Index. All parameters are your weight and height. Enter them and tap om calculate. After you cam analyse it too.',
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
                          'Height: ${_height.text}\nWeight: ${_weight.text}',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                          ),
                        ),
                        Divider(color: Colors.indigo),
                        Text(
                          'Your BMI is between $bmiCalculated and $newNumber.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        SizedBox(height: 10),
                        BmiSubmitButton(
                            submit: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BmiGetRange(bmi: bmiCalculated),
                                ),
                              );
                            },
                            text: 'Go to analyse my BMI'),
                      ],
                    ),
                  )
                : SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
