import 'package:bmicalculator/app/manual/manual.dart';
import 'package:bmicalculator/app/widgets/drawer/left_drawer.dart';
import 'package:bmicalculator/app/widgets/drawer/right_drawer.dart';
import 'package:bmicalculator/app/widgets/post/single_post.dart';
import 'package:bmicalculator/app/data/posts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Body Analyser',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: LeftDrawer(),
      endDrawer: RightDrawer(),
      body: _build(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ManualPage(),
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.question,
          color: Colors.white,
        ),
        tooltip: 'How to use the application',
        elevation: 0,
      ),
    );
  }

  Widget _build() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: links.length,
            itemBuilder: (context, index) {
              return SinglePost(
                postName: links[index]['site'],
                describe: links[index]['about'],
                url: links[index]['url'],
                icon: links[index]['icon'],
              );
            },
          ),
        ),
      ],
    );
  }
}
