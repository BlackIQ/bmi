import 'package:bmicalculator/app/models/user.dart';
import 'package:bmicalculator/app/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    final User user = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.nunito(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              await _auth.signOut();
              Navigator.of(context).pop();
            },
            child: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      body: settingsBody(user),
    );
  }

  Widget settingsBody(User user) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              backgroundImage: user.profile != null
                  ? NetworkImage(
                      user.profile,
                    )
                  : null,
            ),
          ),
          SizedBox(height: 20),
          Text(
            user.name,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            user.email,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Divider(color: Colors.indigo, height: 30),
          Text(
            'Why I had to login with my Google account?',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
              'Login with you Google account helps us to analyse our users and see how many people are using our app. We have no access to your private data or any other things.',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
