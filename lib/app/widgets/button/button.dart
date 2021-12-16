import 'package:flutter/material.dart';

class BmiSubmitButton extends StatelessWidget {
  BmiSubmitButton({
    this.submit,
    this.text,
  });

  final submit;
  final text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: submit,
      child: Container(
        height: 45,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
