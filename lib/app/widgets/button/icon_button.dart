import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CostumeIconButton extends StatelessWidget {
  CostumeIconButton({
    required this.submit,
    required this.text,
    required this.icon,
  });

  final submit;
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: submit,
      child: Container(
        height: 45,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FaIcon(
                icon,
              ),
              SizedBox(width: 25),
              Text(
                text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
