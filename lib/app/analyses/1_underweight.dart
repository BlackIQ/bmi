import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';

class UnderWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Underweight',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'it falls within the underweight range.',
            ),
            SizedBox(height: 10),
            Divider(color: Colors.indigo),
            SizedBox(height: 10),
            Image.asset('assets/underweight.jpg'),
            SizedBox(height: 10),
            TitleText(
              text: "How do I know if I’m underweight?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
              "Women with a BMI of less than 18.5 are considered underweight. The average woman's height is 5 feet, 4 inches. If you weigh 107 pounds or less at this height, you are considered underweight with a BMI of 18.4. A healthy weight range for that woman would be 108 to 145 pounds.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              "BMI is just one way to measure healthy weight. Some women have a low, but still healthy weight. Talk to your doctor or nurse about what is a healthy weight for you.",
            ),
            SizedBox(height: 15),
            TitleText(
              text:
              "What causes women to be underweight or to lose weight suddenly?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
              "Some women are naturally thinner than others. But certain health problems, certain medicines, or other serious problems can lead to chronic (long-term) underweight or sudden weight loss. These include:",
            ),
            SizedBox(height: 10),
            ParagraphText(
                text:
                "- Health problems that affect metabolism, such as overactive thyroid or diabetes"),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Health problems that affect the digestive system, such as celiac disease or Crohn's disease"),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Other health problems, such as viral hepatitis, cancer, COPD, or Parkinson's disease"),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- A lack of appetite due to stress, illness, or substance use"),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Medicines that may cause nausea or lack of appetite"),
            SizedBox(height: 2),
            ParagraphText(text: "- Eating disorders, such as anorexia"),
            SizedBox(height: 2),
            ParagraphText(
                text: "- Over-exercising, such as for athletic training"),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Age. Underweight can especially be a problem for older women who may have loss of appetite, problems chewing, or a health problem."),
            SizedBox(height: 2),
            ParagraphText(text: "- Genes. Underweight can run in families."),
            SizedBox(height: 15),
            TitleText(
              text: "How common is underweight?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
              "In the United States, about 2% of women have underweight.",
            ),
            SizedBox(height: 5),
            ParagraphText(
                text:
                "- Problems with your menstrual cycle. A regular period is a sign of good health. Losing too much weight can cause periods to be less regular or stop completely. This can happen if your body fat drops so low that you stop ovulating, or releasing an egg from an ovary each month. This is especially true if you are losing weight because you are not eating enough or because you are exercising too much, which may be signs of an eating disorder like anorexia nervosa."),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Problems getting pregnant. Problems with your menstrual cycle can make it harder to get pregnant, especially if your period stops completely. If you do not get a period, then you are probably not ovulating, or releasing an egg from an ovary each month."),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Osteoporosis. Underweight increases your risk of osteoporosis later in life. Osteoporosis is a condition that causes bones to become weak and break easily."),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Malnutrition. Malnutrition means your body is not getting enough vitamins and minerals to do what it needs to do. This can cause serious health problems, such as a weaker immune system and anemia. Anemia happens when your blood cannot carry enough oxygen to your body because of a lack of iron. If you have anemia, you may feel dizzy, lightheaded, weak, or tired."),
            SizedBox(height: 2),
            ParagraphText(
                text:
                "- Depression. Studies show that depression is more common in women who are underweight than women who are at a healthy weight."),
            SizedBox(height: 2),
            ParagraphText(
              text:
              "Women who are underweight may also be more likely to die early than people of normal weight.6 Women who are underweight earlier in adulthood may also experience menopause sooner than women who stayed a normal weight.",
            ),
            SizedBox(height: 15),
            TitleText(text: "How can I gain weight in a healthy way?"),
            SizedBox(height: 10),
            ParagraphText(
              text:
              'Talk to your doctor or nurse about an eating plan that can help you gain weight in a healthy way. To gain weight in a healthy way, you should focus on getting enough nutrients — calories, vitamins, and minerals — for your body to work correctly. To reach a healthy weight, you should eat foods from all of the food groups with a calorie amount that is healthy for your current weight. Your doctor or nurse can tell you how quickly to gain weight in a safe and healthy way. Gaining weight suddenly, or by eating a lot of sweet or fatty foods, is not healthy.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              'If you need to gain weight because of an eating disorder, work with your doctor or nurse to gain weight safely and treat the eating disorder. If the eating disorder is not treated, it may come back or continue and cause health problems. Gaining weight too suddenly, with an eating disorder, can cause serious heart problems and other health concerns.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              'Because many Americans are overweight, there are many resources geared toward losing weight. But some of these resources can also provide guidance for you to gain weight in a healthy way. See the list of resources at the end of this page to learn more.',
            ),
            SizedBox(height: 15),
            TitleText(
                text:
                "Should I stop exercising if I’m underweight or losing weight too quickly?"),
            SizedBox(height: 10),
            ParagraphText(
              text:
              'Maybe. People who are underweight due to an eating disorder should not exercise unless their doctor tells them to. Physical activity is important for your health, muscle strength, balance, and flexibility. Your doctor or nurse can help you develop an exercise plan that is healthy and safe for a person of your current weight.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              'If you normally do high-intensity aerobic workouts, your doctor or nurse may talk to you about more moderate or less vigorous aerobic, strength training, and flexibility exercises.',
            ),
            SizedBox(height: 15),
            TitleText(
                text:
                "When should I talk to a doctor or nurse about my weight?"),
            SizedBox(height: 10),
            ParagraphText(
              text:
              'If you are worried about your weight, talk to your doctor or nurse.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              'Your weight can affect your health. Your weight can also make it harder to get pregnant. Talk to your doctor or nurse if you are underweight and have period problems or symptoms of malnutrition, such as extreme tiredness, headaches, or hair loss.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              'Your doctor or nurse will ask you questions and may do tests to learn more about what is causing your symptoms or weight loss. Your doctor or nurse may suggest making changes in your eating and exercise habits, depending on the cause of your weight loss.',
            ),
            SizedBox(height: 10),
            TitleText(text: "Did we answer your question about underweight?"),
            SizedBox(height: 10),
            ParagraphText(
              text:
              'For more information about underweight, call the OWH Helpline at 1-800-994-9662 or check out the following resources from other organizations:',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              '- Aiming for a healthy weight — Information from the National Heart, Lung, and Blood Institute.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              '- Unintentional weight loss — Information from the National Library of Medicine.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
              '- Weight Management — Tools and resources from Nutrition.gov.',
            ),
          ],
        ),
      ),
    );
  }
}
