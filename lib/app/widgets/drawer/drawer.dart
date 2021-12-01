import 'dart:io';

import 'package:bmicalculator/app/widgets/drawer/items/drawer_items.dart';
import 'package:flutter/material.dart';

class bmiDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
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
            text: 'Exit',
            icon: Icons.exit_to_app,
            onTap: exit(1),
          ),
        ],
      ),
    );
  }
}
