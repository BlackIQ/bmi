import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Development extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Development',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _page(context),
    );
  }

  Widget _page(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              text: 'Overview',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'This application is an open-source software that the code is hosted in Github',
            ),
            SizedBox(height: 15),
            TitleText(
              text: 'How to contribute',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'There are some cases you can contribute in application.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: '- When the is a typo. In this case you can open an issue and tell us there is that happening. You can also fonk the repo and change it but this take lots of time.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: '- Articles. There may be some new articles that can improve our analyser documentation. So you can add it to repo.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'UI. If you are a designer or a person who know UI and see there is a issue in user interface, contact us then we will work on it.',
            ),
            SizedBox(height: 15),
            TitleText(
              text: 'License',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'BMI Analyser is a free open source software that means (FOSS). THis application is licensed under GPL-2 license.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'This is a free application. If you see anyone or any site is selling the products, contact us so we will work on it.',
            ),
            SizedBox(height: 15),
            TitleText(
              text: 'Source',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'You can see the code in Github on this link:',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'https://github.com/BlackIQ/bmi',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'Again you can download last release from the site too.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'https://bmi.blackiq.ir',
            ),
            SizedBox(height: 15),
            SizedBox(height: 15),
            TitleText(
              text: 'Developer',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'Hi, I am Amirhossein Mohamamdi. Creator of this applicatin and some other apps. You can contact me front this link below.',
            ),
            SizedBox(height: 5),
            BmiSubmitButton(
              submit: () async {
                await launch('https://amirhossein.info');
              },
              text: 'Open amirhossein.info',
            ),
            SizedBox(height: 5),
            BmiSubmitButton(
              submit: () async {
                await launch('mailto:amirhosseinmohammadi1380@yahoo.com');
              },
              text: 'Email amirhosseinmohammadi1380@yahoo.com',
            ),
            SizedBox(height: 5),
            BmiSubmitButton(
              submit: () async {
                await launch('tel:+989014784362');
              },
              text: 'Call +98 901 478 4362',
            ),
          ],
        ),
      ),
    );
  }
}
