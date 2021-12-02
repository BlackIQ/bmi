import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutBmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whats is BMI?',
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
            SizedBox(height: 5),
            ParagraphText(
              text:
                  'The BMI may be determined using a table or chart which displays BMI as a function of mass and height using contour lines or colours for different BMI categories, and which may use other units of measurement (converted to metric units for the calculation).',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "The BMI is a convenient rule of thumb used to broadly categorize a person as underweight, normal weight, overweight, or obese based on tissue mass (muscle, fat, and bone) and height. Major adult BMI classifications are underweight (under 18.5 kg/m2), normal weight (18.5 to 24.9), overweight (25 to 29.9), and obese (30 or more). When used to predict an individual's health, rather than as a statistical measurement for groups, the BMI has limitations that can make it less useful than some of the alternatives, especially when applied to individuals with abdominal obesity, short stature, or unusually high muscle mass.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: 'History',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
                  'Adolphe Quetelet, a Belgian astronomer, mathematician, statistician, and sociologist, devised the basis of the BMI between 1830 and 1850 as he developed what he called "social physics". The modern term "body mass index" (BMI) for the ratio of human body weight to squared height was coined in a paper published in the July 1972 edition of the Journal of Chronic Diseases by Ancel Keys and others. In this paper, Keys argued that what he termed the BMI was "if not fully satisfactory, at least as good as any other relative weight index as an indicator of relative obesity".',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "The interest in an index that measures body fat came with observed increasing obesity in prosperous Western societies. Keys explicitly judged BMI as appropriate for population studies and inappropriate for individual evaluation. Nevertheless, due to its simplicity, it has come to be widely used for preliminary diagnoses. Additional metrics, such as waist circumference, can be more useful.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "The BMI is universally expressed in kg/m2, resulting from mass in kilograms and height in metres. If pounds and inches are used, a conversion factor of 703 (kg/m2)/(lb/in2) must be applied. When the term BMI is used informally, the units are usually omitted.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "BMI provides a simple numeric measure of a person's thickness or thinness, allowing health professionals to discuss weight problems more objectively with their patients. BMI was designed to be used as a simple means of classifying average sedentary (physically inactive) populations, with an average body composition. For such individuals, the value recommendations as of 2014 are as follows: a BMI from 18.5 to 24.9 kg/m2 may indicate optimal weight, a BMI lower than 18.5 suggests the person is underweight, a number from 25 to 29.9 may indicate the person is overweight, and a number from 30 upwards suggests the person is obese. Lean male athletes often have a high muscle-to-fat ratio and therefore a BMI that is misleadingly high relative to their body-fat percentage.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: 'Categories',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
                  "A common use of the BMI is to assess how far an individual's body weight departs from what is normal or desirable for a person's height. The weight excess or deficiency may, in part, be accounted for by body fat (adipose tissue) although other factors such as muscularity also affect BMI significantly (see discussion below and overweight).",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  'The WHO regards an adult BMI of less than 18.5 as underweight and may indicate malnutrition, an eating disorder, or other health problems, while a BMI equal to or greater than 25 is considered overweight and 30 or more is considered obese. In addition to the principle, international WHO BMI cut-off points (16, 17, 18.5, 25, 30, 35 and 40), four additional cut-off points for at-risk Asians were identified (23, 27.5, 32.5 and 37.5). These ranges of BMI values are valid only as statistical categories.',
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
