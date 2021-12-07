import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class ManualPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Image.asset(
            'assets/icon/bmi.jpg',
          ),
        ),
        title: 'Welcome to Body Analyser',
        body: 'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.'
      ),
      PageViewModel(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/icon/bmi.jpg',
            ),
          ),
          title: 'Welcome to Body Analyser',
          body: 'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.'
      ),
      PageViewModel(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/icon/bmi.jpg',
            ),
          ),
          title: 'Welcome to Body Analyser',
          body: 'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.'
      ),
      PageViewModel(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/icon/bmi.jpg',
            ),
          ),
          title: 'Welcome to Body Analyser',
          body: 'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.'
      ),
      PageViewModel(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/icon/bmi.jpg',
            ),
          ),
          title: 'Welcome to Body Analyser',
          body: 'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.'
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
            onDone: () {
              Navigator.of(context).pop(context);
            },
            onSkip: () {
              Navigator.of(context).pop(context);
            },
            showSkipButton: true,
            globalBackgroundColor: Colors.grey[100],
            skip: Text(
              'Skip',
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
              'Get started',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: Size.square(10),
              activeSize: Size(15, 10),
              activeColor: Colors.indigo,
              color: Colors.grey,
              spacing: EdgeInsets.symmetric(horizontal: 1),
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
