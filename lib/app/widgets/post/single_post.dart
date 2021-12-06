import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SinglePost extends StatelessWidget {
  SinglePost({
    @required this.postName,
    @required this.describe,
    @required this.url,
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
                child: Icon(
                  Icons.cloud,
                  color: Colors.white,
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
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    border: Border.all(
                      color: Colors.indigo,
                    ),
                  ),
                  child: Icon(
                    Icons.open_in_browser,
                    color: Colors.indigo,
                    size: 20,
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
