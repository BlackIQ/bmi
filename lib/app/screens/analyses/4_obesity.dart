import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';

class Obesity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Obesity',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'it falls within the obese range.',
            ),
            SizedBox(height: 10),
            Divider(color: Colors.indigo),
            SizedBox(height: 10),
            Image.asset('assets/obesity.jpg'),
            SizedBox(height: 10),
            TitleText(
              text: "Overview of what is Obesity",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
                  "Obesity is a medical condition in which excess body fat has accumulated to an extent that it may have a negative effect on health. People are generally considered obese when their body mass index (BMI), a measurement obtained by dividing a person's weight by the square of the person's height—despite known allometric inaccuracies[a]—is over 30 kg/m2; the range 25–30 kg/m2 is defined as overweight. Some East Asian countries use lower values.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Obesity is correlated with various diseases and conditions, particularly cardiovascular diseases, type 2 diabetes, obstructive sleep apnea, certain types of cancer, and osteoarthritis. High BMI is a marker of risk, but not proven to be a direct cause, for diseases caused by diet, physical activity, and environmental factors. A reciprocal link has been found between obesity and depression, with obesity increasing the risk of clinical depression and also depression leading to a higher chance of developing obesity.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Obesity has individual, socioeconomic, and environmental causes, including diet, physical activity, automation, urbanization, genetic susceptibility, medications, mental disorders, economic policies, endocrine disorders, and exposure to endocrine-disrupting chemicals. Epidemiologic studies of overweight and obesity in children and adults covering 195 countries have shown that the prevalence of obesity has steadily increased in most countries, doubling in 73 countries over the 25 years from 1980 to 2015. As of 2015, the United States and China had the largest numbers of obese adults, and China and India had the largest numbers of obese children. By 2018, 42% of Americans were obese.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "While a majority of obese individuals at any given time are attempting to lose weight and are often successful, research shows that maintaining that weight loss over the long term proves to be rare. The reasons for weight cycling are not fully understood but may include decreased energy expenditure combined with increased biological urge to eat during and after caloric restriction. More studies are needed to determine if weight cycling and yo-yo dieting contribute to inflammation and disease risk in obese individuals.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  'Obesity prevention requires a complex approach, including interventions at community, family, and individual levels. Changes to diet and exercising are the main treatments recommended by health professionals. Diet quality can be improved by reducing the consumption of energy-dense foods, such as those high in fat or sugars, and by increasing the intake of dietary fiber. However, large-scale analyses have found an inverse relationship between energy density and energy cost of foods in developed nations. Low-income populations are more likely to live in neighborhoods that are considered "food deserts" or "food swamps" where nutritional groceries are less available. Medications can be used, along with a suitable diet, to reduce appetite or decrease fat absorption If diet, exercise, and medication are not effective, a gastric balloon or surgery may be performed to reduce stomach volume or length of the intestines, leading to feeling full earlier or a reduced ability to absorb nutrients from food.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Obesity is a leading preventable cause of death worldwide, with increasing rates in adults and children. In 2015, 600 million adults (12%) and 100 million children were obese in 195 countries. Obesity is more common in women than in men. Authorities view it as one of the most serious public health problems of the 21st century. Obesity is stigmatized in much of the modern world (particularly in the Western world), though it was seen as a symbol of wealth and fertility at other times in history and still is in some parts of the world. In 2013, several medical societies, including the American Medical Association and the American Heart Association, classified obesity as a disease.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "Effects on health",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text:
                  "Excessive body weight is associated with various diseases and conditions, particularly cardiovascular diseases, diabetes mellitus type 2, obstructive sleep apnea, certain types of cancer, osteoarthritis, and asthma. As a result, obesity has been found to reduce life expectancy.",
            ),
            SizedBox(height: 5),
            TitleText(
              text: "- Mortality",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  'Obesity is one of the leading preventable causes of death worldwide. A number of reviews have found that mortality risk is lowest at a BMI of 20–25 kg/m2 in non-smokers and at 24–27 kg/m2 in current smokers, with risk increasing along with changes in either direction. This appears to apply in at least four continents. In contrast, a 2013 review found that grade 1 obesity (BMI 30–34.9) was not associated with higher mortality than normal weight, and that overweight (BMI 25–29.9) was associated with "lower" mortality than was normal weight (BMI 18.5–24.9). Other evidence suggests that the association of BMI and waist circumference with mortality is U- or J-shaped, while the association between waist-to-hip ratio and waist-to-height ratio with mortality is more positive. In Asians the risk of negative health effects begins to increase between 22–25 kg/m2. A BMI above 32 kg/m2 has been associated with a doubled mortality rate among women over a 16-year period. In the United States, obesity is estimated to cause 111,909 to 365,000 deaths per year, while 1 million (7.7%) of deaths in Europe are attributed to excess weight. On average, obesity reduces life expectancy by six to seven years, a BMI of 30–35 kg/m2 reduces life expectancy by two to four years, while severe obesity (BMI ≥ 40 kg/m2) reduces life expectancy by ten years.',
            ),
            SizedBox(height: 5),
            TitleText(
              text: "- Morbidity",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Obesity increases the risk of many physical and mental conditions. These comorbidities are most commonly shown in metabolic syndrome, a combination of medical disorders which includes: diabetes mellitus type 2, high blood pressure, high blood cholesterol, and high triglyceride levels. A study from the RAK Hospital found that obese people are at a greater risk of developing long COVID. The CDC has found that obesity is the single strongest risk factor for severe COVID-19 illness.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Complications are either directly caused by obesity or indirectly related through mechanisms sharing a common cause such as a poor diet or a sedentary lifestyle. The strength of the link between obesity and specific conditions varies. One of the strongest is the link with type 2 diabetes. Excess body fat underlies 64% of cases of diabetes in men and 77% of cases in women.",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Health consequences fall into two broad categories: those attributable to the effects of increased fat mass (such as osteoarthritis, obstructive sleep apnea, social stigmatization) and those due to the increased number of fat cells (diabetes, cancer, cardiovascular disease, non-alcoholic fatty liver disease). Increases in body fat alter the body's response to insulin, potentially leading to insulin resistance. Increased fat also creates a proinflammatory state, and a prothrombotic state.",
            ),
            SizedBox(height: 5),
            TitleText(
              text: "- Survival paradox",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "Although the negative health consequences of obesity in the general population are well supported by the available evidence, health outcomes in certain subgroups seem to be improved at an increased BMI, a phenomenon known as the obesity survival paradox. The paradox was first described in 1999 in overweight and obese people undergoing hemodialysis, and has subsequently been found in those with heart failure and peripheral artery disease (PAD).",
            ),
            SizedBox(height: 5),
            ParagraphText(
              text:
                  "In people with heart failure, those with a BMI between 30.0 and 34.9 had lower mortality than those with a normal weight. This has been attributed to the fact that people often lose weight as they become progressively more ill. Similar findings have been made in other types of heart disease. People with class I obesity and heart disease do not have greater rates of further heart problems than people of normal weight who also have heart disease. In people with greater degrees of obesity, however, the risk of further cardiovascular events is increased. Even after cardiac bypass surgery, no increase in mortality is seen in the overweight and obese. One study found that the improved survival could be explained by the more aggressive treatment obese people receive after a cardiac event. Another study found that if one takes into account chronic obstructive pulmonary disease (COPD) in those with PAD, the benefit of obesity no longer exists.",
            ),
            SizedBox(height: 15),
            TitleText(
              text: "How common is underweight?",
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: "In the United States, about 2% of women have underweight.",
            ),
          ],
        ),
      ),
    );
  }
}
