import 'dart:io';
import 'package:bmicalculator/app/pages/about_app.dart';
import 'package:bmicalculator/app/pages/about_bmi.dart';
import 'package:bmicalculator/app/pages/about_development.dart';
import 'package:bmicalculator/app/widgets/drawer/items/drawer_items.dart';
import 'package:flutter/material.dart';

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
                image: NetworkImage(
                  'https://wallpapercave.com/wp/wp2219707.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Body Mass Index',
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
            icon: Icons.laptop_mac,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AboutDev(),
                ),
              );
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
