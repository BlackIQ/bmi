import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({
    @required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
