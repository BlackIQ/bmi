import 'package:bmicalculator/app/widgets/button/button.dart';
import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
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
              text: 'How to contact?',
            ),
            SizedBox(height: 10),
            ParagraphText(
              text: 'From website or sending emails.',
            ),
            SizedBox(height: 10),
            BmiSubmitButton(
              submit: () async {
                await launch('https://bmi.blackiq.ir');
              },
              text: 'Open bmi.blackiq.ir',
            ),
            BmiSubmitButton(
              submit: () async {
                await launch('mailto:amirhosseinmohammadi1380@yahoo.com');
              },
              text: 'Email amirhosseinmohammadi1380@yahoo.com',
            ),
          ],
        ),
      ),
    );
  }
}
