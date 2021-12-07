import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class ManualPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: 'First Page',
        body: 'This is a body',
      ),
      PageViewModel(
        image: Image.network(
            'https://avatars.githubusercontent.com/u/55284339?v=4'),
        title: 'First Page',
        body: 'This is a body',
      ),
      PageViewModel(
        image: Image.network(
            'https://avatars.githubusercontent.com/u/55284339?v=4'),
        title: 'First Page',
        body: 'This is a body',
      ),
      PageViewModel(
        image: Image.network(
            'https://avatars.githubusercontent.com/u/55284339?v=4'),
        title: 'First Page',
        body: 'This is a body',
      ),
      PageViewModel(
        image: Image.network(
            'https://avatars.githubusercontent.com/u/55284339?v=4'),
        title: 'First Page',
        body: 'This is a body',
      ),
      PageViewModel(
        image: Image.network(
            'https://avatars.githubusercontent.com/u/55284339?v=4'),
        title: 'First Page',
        body: 'This is a body',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: IntroductionScreen(
            pages: getPages(),
            onDone: () {},
            onSkip: () {},
            showSkipButton: true,
            globalBackgroundColor: Colors.grey[100],
            skip: Text(
              'Get started',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            next: Text(
              'Next',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            done: Text(
              'Lets get started',
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20.0, 10.0),
              activeColor: Colors.indigo,
              color: Colors.grey,
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
