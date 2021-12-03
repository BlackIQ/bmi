import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';

class Healthy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Healthy',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'it falls within the normal or Healthy Weight range.',
            ),
            SizedBox(height: 10),
            Divider(color: Colors.indigo),
            SizedBox(height: 10),
            Image.network("https://images.ctfassets.net/plyq12u1bv8a/1C7j6hSnbCoKW0c4KqsQ0k/98a1e434fd9d171875f89610f5a52da7/BMI_Header_New.jpg"),
            SizedBox(height: 10),
            ParagraphText(
              text: "People come in all shapes and sizes. While it’s good to embrace our differences, staying healthy is important for everyone. One key indicator of health is your body fat percentage.",
            ),
            SizedBox(height: 5),
            ParagraphText(
                text: "The first step in managing your body fat is to get an accurate measurement of how much body fat you have. The best way gage this is to measure your Body Mass Index (BMI), which estimates your percentage of body fat based on your height and weight.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "For adults, your BMI is calculated by dividing your weight over the square of your height. According to the US Preventive Services Task Force, by factoring in both your height and weight (and not just your weight alone), your BMI helps determine if you are at risk of certain diseases.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "What is a healthy BMI?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "Adult Body Mass Index is a range of body fat percentages that are determined by your age and height, notes the Centers for Disease Control and Prevention. Typically, people with a BMI between 18.5 and 25 are considered at a healthy percentile. Those with a BMI lower than 18.5 are considered underweight, and those with a BMI between 25 and 30 are considered overweight. People with a BMI of 30 or higher are considered obese and at high risk for disease.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "While BMI measurements are standard for most people, there are occasional exceptions to the rule. For example, athletes and people with a higher level of muscle mass may generate a BMI calculation that designates them as overweight or even obese, despite their high level of fitness. It’s important for athletes to talk to their doctor to ensure they’re maintaining a healthy body fat balance.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "What are the health consequences of a high BMI?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "When it comes to the amount of body fat you carry, the stakes are high. Obesity and high levels of body fat carry a variety of health consequences, and can affect your overall health and quality of life. They include:",
            ),
            SizedBox(height: 5),
            ParagraphText(text: "- High blood pressure"),
            SizedBox(height: 2),
            ParagraphText(text: "- High cholesterol levels"),
            SizedBox(height: 2),
            ParagraphText(text: "- Diabetes"),
            SizedBox(height: 2),
            ParagraphText(text: "- Heart disease"),
            SizedBox(height: 2),
            ParagraphText(text: "- Stroke"),
            SizedBox(height: 2),
            ParagraphText(text: "- Gallbladder disease"),
            SizedBox(height: 2),
            ParagraphText(text: "- Osteoarthritis"),
            SizedBox(height: 2),
            ParagraphText(text: "- Sleep apnea"),
            SizedBox(height: 2),
            ParagraphText(text: "- Chronic inflammation and pain"),
            SizedBox(height: 2),
            ParagraphText(text: "- Certain types of cancer"),
            SizedBox(height: 2),
            ParagraphText(text: "- Mental disorders such as anxiety and depression"),
            SizedBox(height: 2),
            ParagraphText(text: "- Increased risk of death"),
            SizedBox(height: 15),
            TitleText(
              text: "How to maintain a healthy BMI?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "Maintaining a healthy BMI takes some work. For starters, it’s important to exercise at least 60-90 minutes most days of the week. Staying hydrated and eat a balanced diet are equally important. If your BMI isn’t where it should be, you may want to reduce your caloric intake and increase your exercise.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "When to call in a doctor",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "If your BMI score is outside of a healthy percentile, it’s time to call a professional. Consult your primary care doctor for advice on ways you can achieve a healthy balance of body fat. If needed, you may need to see a dietician to achieve your health goals.",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
