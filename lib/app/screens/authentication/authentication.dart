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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              'Welcome to',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 30,
              ),
            ),
            // SizedBox(height: 10),
            Text(
              'Body Analyser',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 50,
              ),
            ),
            SizedBox(height: 40),
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
            SizedBox(height: 20),
            Text(
              'You should sign in to continue to the app',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}