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
      body: SingleChildScrollView(
        child: Padding(
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
                    'Why should I sign in with Google?',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'If you sign in with you Google account, we can analyse our users more exactly and make easier to send you notifications.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Note: We have no access to your Google account private data. This application use Firebase that is a service from Google.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'What is anonymous sign in?',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'With anonymous sign in, you dont need to enter any email or password or any other things.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'In this way, you can still use the app and it make no changes. This application doesnt save any data that you need to use a real sign in.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Ok, Sign in to continue',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
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
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () async {
                        dynamic result = await _auth.signinAnon();
                        if (result.runtimeType == List) {
                          print(result[1]);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.userSecret,
                          ),
                          Text(
                            'Sign in Anonymously',
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
            ],
          ),
        ),
      ),
    );
  }
}
