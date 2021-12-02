import 'package:bmicalculator/app/bmipages/calculate_bmi.dart';
import 'package:bmicalculator/app/bmipages/categorise.dart';
import 'package:bmicalculator/app/widgets/drawer/items/drawer_items.dart';
import 'package:flutter/material.dart';

class RightDrawer extends StatelessWidget {
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
                  'https://wallpapercave.com/wp/wp1828770.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calculate or Analyze BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Here you can calculate or give the BMI to see status',
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
            icon: Icons.equalizer,
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
            icon: Icons.filter_list,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Categorise(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
