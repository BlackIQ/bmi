import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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

  List<Map> links = [
    {
      'site': 'Wikipedia',
      'about': 'Article about Body Mass Index',
      'url': 'https://en.wikipedia.org/wiki/Body_mass_index',
    },
    {
      'site': 'Wikipedia',
      'about': 'Article about overweight',
      'url': 'https://en.wikipedia.org/wiki/Overweight',
    },
    // After
    {
      'site': 'Wikipedia',
      'about': 'Article about Underweight',
      'url': 'https://en.wikipedia.org/wiki/Underweight',
    },
    {
      'site': 'Wikipedia',
      'about': 'Article about Obesity',
      'url': 'https://en.wikipedia.org/wiki/Obesity',
    },
    {
      'site': 'Medical News Today',
      'about': 'How much should I weigh for my height and age?',
      'url': 'https://www.medicalnewstoday.com/articles/323446',
    },
    {
      'site': 'Centers for Disease Control and Prevention',
      'about': 'Obesity and adults',
      'url': 'https://www.cdc.gov/obesity/adult/defining.html',
    },
    {
      'site': 'Mount Sinai',
      'about': 'Overweight',
      'url': 'https://www.mountsinai.org/health-library/symptoms/overweight',
    },
    {
      'site': 'WHO',
      'about': 'Obesity and overweight',
      'url': 'https://www.who.int/news-room/fact-sheets/detail/obesity-and-overweight',
    },
    {
      'site': 'NIDDK',
      'about': 'Facts for Adult Overweight & Obesity',
      'url': 'https://www.niddk.nih.gov/health-information/weight-management/adult-overweight-obesity/definition-facts',
    },
  ];

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
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
                subtitle: Text(
                  links[index]['about'],
                ),
                onLongPress: () async {
                  await launch(links[index]['url']);
                },
              );
            },
            separatorBuilder: (context, index) => Divider(color: Colors.indigo,),
          ),
        ),
      ],
    );
  }
}
