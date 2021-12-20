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
        body:
            'With Body analyser you can calculate you BMI and also analyse it.\n\nBut how to use this application?\nPress next to start this short document.',
      ),
      PageViewModel(
        image: ClipRRect(
          child: Image.asset(
            'assets/manual/drawer.png',
          ),
        ),
        title: 'Drawer items',
        body:
            'There are 2 parts in drawer. First part for BMI features and the next part is for app features or introduction.\nIn next slide we will talk about how to use this features in app.',
      ),
      PageViewModel(
        image: ClipRRect(
          child: Image.asset(
            'assets/manual/bmi-items.png',
          ),
        ),
        title: 'BMI features',
        body:
            'In this part as we said you can use to calculate or analyse your BMI.\nIf you dont know what exatcly BMI is, tap on third item to read a verified article about BMI.',
      ),
      PageViewModel(
        image: ClipRRect(
          child: Image.asset(
            'assets/manual/app-items.png',
          ),
        ),
        title: 'App features',
        body: 'Next part is app features. About app, site and even development.\nYou can use sources item to see what articles exactly we used in the app.'
      ),
      PageViewModel(
        image: ClipRRect(
          child: Image.asset(
            'assets/manual/landing.png',
          ),
        ),
        title: 'Landing Page',
        body:
            'Landing page is the first page that you come across.\nHere are some good articles about health. Child, old people or normal ages.',
      ),
      PageViewModel(
        image: ClipRRect(
          child: Image.asset(
            'assets/manual/done.jpg',
          ),
        ),
        title: 'Done',
        body:
            'Tnx for reading. We hope you fully understand how to use the app.\nIf you have any question or see an issues, you can contact us via Email or open an issue in Github',
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
            skipColor: Colors.red,
            doneColor: Colors.green,
            nextColor: Colors.indigo,
            showSkipButton: true,
            globalBackgroundColor: Colors.grey[100],
            skip: Text(
              'Skip',
            ),
            next: Text(
              'Next',
            ),
            done: Text(
              'Get started',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            // animationDuration: 500,
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
