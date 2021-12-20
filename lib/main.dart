import 'package:bmicalculator/app/models/user.dart';
import 'package:bmicalculator/app/screens/home/splash/splash_screen.dart';
import 'package:bmicalculator/app/screens/landing.dart';
import 'package:bmicalculator/app/services/authentication.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              textTheme: GoogleFonts.nunitoTextTheme(),
            ),
            home: snapshot.connectionState == ConnectionState.waiting
                ? SplashScreen()
                : Landing(),
          );
        },
      ),
    );
  }
}
