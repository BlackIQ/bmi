import 'package:bmicalculator/app/screens/home.dart';
import 'package:bmicalculator/app/screens/splash/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              textTheme: GoogleFonts.nunitoTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Body Analyser SplashScreen',
            home: SplashScreen(),
          );
        } else {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              textTheme: GoogleFonts.nunitoTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Body Analyser',
            home: Home(),
          );
        }
      },
    );
  }
}
