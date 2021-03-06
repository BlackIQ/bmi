import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItemWidget extends StatelessWidget {
  DrawerItemWidget({
    this.text,
    this.icon,
    this.onTap,
  });

  final icon;
  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          FaIcon(
            icon,
            color: Colors.indigo,
          ),
          SizedBox(width: 25),
          Text(
            text,
            style: TextStyle(
              color: Colors.indigo,
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
