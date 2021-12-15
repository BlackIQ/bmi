import 'package:bmicalculator/app/screens/manual/manual.dart';
import 'package:bmicalculator/app/widgets/drawer/left_drawer.dart';
import 'package:bmicalculator/app/widgets/drawer/right_drawer.dart';
import 'package:bmicalculator/app/widgets/post/single_post.dart';
import 'package:bmicalculator/app/services/posts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmicalculator/app/screens/splash/splash_screen.dart';
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
            home: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Body Analyser',
                  style: GoogleFonts.nunito(),
                ),
                centerTitle: true,
                elevation: 0,
              ),
              drawer: LeftDrawer(),
              endDrawer: RightDrawer(),
              body: _build(),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ManualPage(),
                    ),
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.question,
                  color: Colors.white,
                ),
                tooltip: 'How to use the application',
                elevation: 0,
              ),
            ),
          );
        }
      },
    );
  }

  Widget _build() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: links.length,
            itemBuilder: (context, index) {
              return SinglePost(
                postName: links[index]['site'],
                describe: links[index]['about'],
                url: links[index]['url'],
                icon: links[index]['icon'],
              );
            },
          ),
        ),
      ],
    );
  }
}
