import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SinglePost extends StatelessWidget {
  SinglePost({
    this.postName,
    this.describe,
    this.url,
  });

  final postName;
  final url;
  final describe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 125,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.indigo,
                width: 60,
                height: 125,
                child: Center(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(315 / 360),
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        postName,
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        describe,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await launch(url);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  width: 60,
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.chrome,
                        color: Colors.indigo,
                        size: 20,
                      ),
                      SizedBox(height: 10),
                      FaIcon(
                        FontAwesomeIcons.firefox,
                        color: Colors.indigo,
                        size: 20,
                      ),
                      SizedBox(height: 10),
                      FaIcon(
                        FontAwesomeIcons.safari,
                        color: Colors.indigo,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
