import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home2.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenui extends StatefulWidget {
  const IntroductionScreenui({super.key});

  @override
  State<IntroductionScreenui> createState() => _IntroductionScreenuiState();
}

class _IntroductionScreenuiState extends State<IntroductionScreenui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'SAU HELLO ',
            body: 'luvluvluvluv',
            image: Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU HI ',
            body: 'luvluvluvluv',
            image: Image.asset(
              'assets/images/pic2.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU Hee ',
            body: 'luvluvluvluv',
            image: Image.asset(
              'assets/images/pic3.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU hooo ',
            body: 'luvluvluvluv',
            image: Image.asset(
              'assets/images/pic4.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          PageViewModel(
            title: 'SAU hum ',
            body: 'luvluvluvluv',
            image: Image.asset(
              'assets/images/pic5.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text(
          'ตกลง',
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home2UI(),
            ),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
