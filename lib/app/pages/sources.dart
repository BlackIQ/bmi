import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sources',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _page(),
    );
  }

  Widget _page() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(
                text: 'All sources that we used for our documentation',
              ),
              SizedBox(height: 10),
              ParagraphText(text: 'Have long press on each item to open in browser'),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            itemCount: links.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  links[index]['site'],
                ),
                subtitle: Text(
                  links[index]['about'],
                ),
                onLongPress: () {
                  print(links[index]['url']);
                },
              );
            },
            separatorBuilder: (context, index) => Divider(color: Colors.indigo,),
          ),
        ),
        // ParagraphText(
        //   text: 'https://en.wikipedia.org/wiki/Body_mass_index',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text: 'https://en.wikipedia.org/wiki/Overweight',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text: 'https://en.wikipedia.org/wiki/Underweight',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text: 'https://en.wikipedia.org/wiki/Obesity',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text: 'https://www.medicalnewstoday.com/articles/323446',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text: 'https://www.cdc.gov/obesity/adult/defining.html',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text:
        //       'https://www.mountsinai.org/health-library/symptoms/overweight',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text:
        //       'https://www.who.int/news-room/fact-sheets/detail/obesity-and-overweight',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text:
        //       'https://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/english_bmi_calculator/bmi_calculator.html',
        // ),
        // SizedBox(height: 5),
        // ParagraphText(
        //   text:
        //       'https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm',
        // ),
        // ParagraphText(
        //   text:
        //       'https://www.niddk.nih.gov/health-information/weight-management/adult-overweight-obesity/definition-facts',
        // ),
      ],
    );
  }
}
