import 'package:bmicalculator/app/screens/authentication/authentication.dart';
import 'package:bmicalculator/app/screens/home/home.dart';
import 'package:bmicalculator/app/models/user.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return user != null ? Home() : Authentication();
  }
}
