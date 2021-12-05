import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About App',
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
              text: 'Body Analyser',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'Body analyser is a complete app to give you the range of your BMI and analyse it and tell you whitch category are your exactly in.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'We have many articles about health that you can get them every morning from the main page.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'One other benefits of this application is that the application is cross platform. If your have an iOS device you can install this application in your iPhone too.',
            ),
            SizedBox(height: 5),
            ParagraphText(
              text: 'To see licenses, version and other things, click in the button below.',
            ),
            SizedBox(height: 10),
            BmiSubmitButton(
              submit: () => showAboutDialog(
                context: context,
                applicationLegalese: 'Body Analyser, whats out your health',
                applicationName: 'Body Analyser',
                applicationVersion: '1.0.0',
              ),
              text: 'More details',
            ),
          ],
        ),
      ),
    );
  }
}
