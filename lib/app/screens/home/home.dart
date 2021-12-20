import 'package:bmicalculator/app/screens/home/pages/settings.dart';
import 'package:bmicalculator/app/widgets/drawer/drawer_items.dart';
import 'package:bmicalculator/app/screens/home/pages/about_development.dart';
import 'package:bmicalculator/app/screens/home/pages/calculate_bmi.dart';
import 'package:bmicalculator/app/widgets/post/single_post.dart';
import 'package:bmicalculator/app/screens/home/pages/categorise.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/app/screens/home/pages/about_app.dart';
import 'package:bmicalculator/app/screens/home/pages/about_bmi.dart';
import 'package:bmicalculator/app/screens/home/pages/contact.dart';
import 'package:bmicalculator/app/screens/home/pages/sources.dart';
import 'package:bmicalculator/app/screens/home/pages/manual.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Home extends StatelessWidget {
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
                image: DecorationImage(
                  image: AssetImage("assets/left.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Body Analyser',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Version 3.1.3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            DrawerItemWidget(
              text: 'Calculator BMI',
              icon: FontAwesomeIcons.chartBar,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => BmiCalculate(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Get category',
              icon: FontAwesomeIcons.listOl,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Categorise(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'What is BMI',
              icon: FontAwesomeIcons.question,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutBmi(),
                  ),
                );
              },
            ),
            Divider(color: Colors.indigo),
            DrawerItemWidget(
              text: 'About app',
              icon: FontAwesomeIcons.mobileAlt,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutApp(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Development',
              icon: FontAwesomeIcons.tools,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Development(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Sources',
              icon: FontAwesomeIcons.listUl,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Sources(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Contact us',
              icon: FontAwesomeIcons.solidEnvelope,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Contact(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Open site',
              icon: FontAwesomeIcons.globeAmericas,
              onTap: () async {
                await launch('https://bmi.blackiq.ir');
              },
            ),
            DrawerItemWidget(
              text: 'Settings',
              icon: FontAwesomeIcons.cog,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Settings(),
                  ),
                );
              },
            ),
            DrawerItemWidget(
              text: 'Exit',
              icon: FontAwesomeIcons.signOutAlt,
              onTap: () => exit(1),
            ),
          ],
        ),
      ),
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
    final firestore = Firestore.instance;
    final sites = firestore.collection('sites');

    return StreamBuilder(
      stream: sites.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              return SinglePost(
                postName: snapshot.data.documents[index]['site'],
                describe: snapshot.data.documents[index]['about'],
                url: snapshot.data.documents[index]['url'],
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
