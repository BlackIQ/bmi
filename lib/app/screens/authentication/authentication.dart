import 'package:bmicalculator/app/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sign in to Body Analyser',
          style: GoogleFonts.nunito(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Body Analyser',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Body Analyser is an application that you can analyse yur BMI, read helpful articles and so many other features.',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'BMI means ( Body Mass Index ). With BMI you can see how is your body health status.',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'For more information check out application documentation inside the app.',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Why should I login with Google?',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'If you login with you Google account, we can analyse our users more exactly and make easier to send you notifications.',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Note: We have no access to your Google account private data. This application use Firebase that is a service from Google.',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Ok, Sign in to continue',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  dynamic result = await _auth.googleLogin();
                  if (result.runtimeType == List) {
                    print(result[1]);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.google,
                    ),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
