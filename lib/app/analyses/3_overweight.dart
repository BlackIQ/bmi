import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';

class OverWight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Overweight',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: ' it falls within the overweight range.',
            ),
            SizedBox(height: 10),
            Divider(color: Colors.indigo),
            SizedBox(height: 10),
            Image.asset('assets/overweight.jpg'),
            SizedBox(height: 10),
            TitleText(
              text: "what exactly is overweight",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "Being overweight or fat is having more body fat than is optimally healthy. Being overweight is especially common where food supplies are plentiful and lifestyles are sedentary.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "As of 2003, excess weight reached epidemic proportions globally, with more than 1 billion adults being either overweight or obese. In 2013, this increased to more than 2 billion. Increases have been observed across all age groups.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "A healthy body requires a minimum amount of fat for proper functioning of the hormonal, reproductive, and immune systems, as thermal insulation, as shock absorption for sensitive areas, and as energy for future use; however, the accumulation of too much storage fat can impair movement, flexibility, and alter the appearance of the body.",
            ),
            SizedBox(height: 15),
            TitleText(
              text:
              "Classification",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "The degree to which a person is overweight is generally described by the body mass index (BMI). Overweight is defined as a BMI of 25 or more, thus it includes pre-obesity defined as a BMI between 25 and 29.9 and obesity as defined by a BMI of 30 or more.[4][5] Pre-obese and overweight however are often used interchangeably, thus giving overweight a common definition of a BMI of between 25 and 29.9. There are, however, several other common ways to measure the amount of adiposity or fat present in an individual's body.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "Health effects",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'While the negative health outcomes associated with obesity are accepted within the medical community, the health implications of the overweight category are more controversial. The generally accepted view is that being overweight causes similar health problems to obesity, but to a lesser degree. A 2016 review estimated that the risk of death increases by seven percent among overweight people with a BMI of 25 to 27.5 and 20 percent among overweight people with a BMI of 27.5 to 30. The Framingham heart study found that being overweight at age 40 reduced life expectancy by three years. Being overweight also increases the risk of oligospermia and azoospermia in men.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'Katherine Flegal et al., however, found that the mortality rate for individuals who are classified as overweight (BMI 25 to 29.9) may actually be lower than for those with an "ideal" weight (BMI 18.5 to 24.9), noting that many studies show that the lowest mortality rate is at a BMI close to 25.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'Being overweight has been identified as a cause of cancer, and is projected to overtake smoking as the primary cause of cancer in developed countries as cases of smoking-related cancer dwindle.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'Psychological well-being is also at risk in the overweight individual due to social discrimination. However, children under the age of eight are normally not affected.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'Being overweight has been shown not to increase mortality[qualify evidence] in older people: in a study of 70 to 75-year old Australians, mortality was lowest for "overweight" individuals (BMI 25 to 29.9), while a study of Koreans found that, among those initially aged 65 or more, an increase in BMI to above 25 was not associated with increased risk of death.',
            ),
            SizedBox(height: 15),
            TitleText(
              text:
              "Classification",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "The degree to which a person is overweight is generally described by the body mass index (BMI). Overweight is defined as a BMI of 25 or more, thus it includes pre-obesity defined as a BMI between 25 and 29.9 and obesity as defined by a BMI of 30 or more.[4][5] Pre-obese and overweight however are often used interchangeably, thus giving overweight a common definition of a BMI of between 25 and 29.9. There are, however, several other common ways to measure the amount of adiposity or fat present in an individual's body.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "Cases",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'Being overweight is generally caused by the intake of more calories (by eating) than are expended by the body (by exercise and everyday activity). Factors that may contribute to this imbalance include:',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: '- Alcoholism',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Alcoholism',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Genetic predisposition',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Hormonal imbalances (e.g. hypothyroidism)',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Insufficient or poor-quality sleep',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Limited physical exercise and a sedentary lifestyle',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Poor nutrition',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Metabolic disorders, which could be caused by repeated attempts to lose weight by weight cycling',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Overeating',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Psychotropic medication (e.g. olanzapine)',
            ),
            SizedBox(height: 2),
            ParagraphText(
                text: '- Smoking cessation and other stimulant withdrawal',
            ),
            SizedBox(height: 2),
            ParagraphText(
              text: '- Stress',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'People who have insulin dependent diabetes and chronically overdose insulin may gain weight, while people who already are overweight may develop insulin tolerance, and in the long run develop type II diabetes.',
            ),
            SizedBox(height: 15),
            TitleText(
              text:
              "Treatment",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "The usual treatments for overweight individuals is diet and physical exercise.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "Dietitians generally recommend eating several balanced meals dispersed through the day, with a combination of progressive, primarily aerobic, physical exercise. In fact, some research found benefits from physical activity, diet and behaviour changes on BMI in children from 12 to 17 years old.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "Because these general treatments help most case of obesity, they are common in all levels of overweight individuals.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "Considering that most of the treatment strategies are directed to change lifestyle-related behaviours of individuals (namely in dietary and physical activity), the transtheoretical model (TTM) has been used as a framework to design weight management interventions. A systematic review assessed the effectiveness of dietary and physical activity interventions based on the TTM in producing sustainable (one year or longer) weight loss in overweight and obese adults. The included studies did not allow to produce conclusive evidence about the impact of the use of this model combined with these interventions on sustainable weight loss. Nevertheless, very low quality scientific evidence suggests that this approach may lead to improvements in physical activity and dietary habits, namely increased in both exercise duration and frequency, and fruits and vegetables consumption, alongside with reduced dietary fat intake.",
            ),
            SizedBox(height: 15),
            TitleText(
              text:
              "Epidemiology",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "The World Health Organization (WHO) estimated that nearly 2 billion adults worldwide, aged 18 years and older, were overweight in 2016.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: "As much as 71.6% of the United States' adult population aged 20 and over is considered either overweight or obese, and this percentage has increased over the last four decades.",
            ),
          ],
        ),
      ),
    );
  }
}
