import 'package:flutter/material.dart';

class BmiField extends StatelessWidget {
  BmiField({
    required this.controller,
    required this.label,
    required this.hint,
  });

  final controller;
  final label;
  final hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        hintText: hint,
      ),
      keyboardType: TextInputType.number,
    );
  }
}
