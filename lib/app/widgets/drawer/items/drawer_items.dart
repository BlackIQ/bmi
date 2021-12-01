import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  DrawerItemWidget({required this.text, required this.icon, required this.onTap});
  final icon;
  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
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
