import 'package:bmicalculator/app/widgets/text/p.dart';
import 'package:bmicalculator/app/widgets/text/title.dart';
import 'package:bmicalculator/app/services/sources.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              ParagraphText(
                  text: 'Have long press on each item to open in browser'),
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
                trailing: FaIcon(
                  links[index]['icon'],
                  color: Colors.indigo,
                ),
                onLongPress: () async {
                  await launch(links[index]['url']);
                },
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }
}
