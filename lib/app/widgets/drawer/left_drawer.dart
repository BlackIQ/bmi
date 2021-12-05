import 'dart:io';
import 'package:bmicalculator/app/pages/about_app.dart';
import 'package:bmicalculator/app/pages/about_bmi.dart';
import 'package:bmicalculator/app/pages/about_development.dart';
import 'package:bmicalculator/app/pages/contact.dart';
import 'package:bmicalculator/app/pages/sources.dart';
import 'package:bmicalculator/app/widgets/drawer/items/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  'Version 1.0.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          DrawerItemWidget(
            text: 'What is BMI',
            icon: Icons.question_answer,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AboutBmi(),
                ),
              );
            },
          ),
          DrawerItemWidget(
            text: 'About app',
            icon: Icons.info_outline,
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
            icon: Icons.devices,
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
            icon: Icons.format_align_justify,
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
            icon: Icons.email,
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
            icon: Icons.cloud,
            onTap: () async {
              await launch('https://bmi.blackiq.ir');
            },
          ),
          DrawerItemWidget(
            text: 'Exit',
            icon: Icons.exit_to_app,
            onTap: () => exit(1),
          ),
        ],
      ),
    );
  }
}
