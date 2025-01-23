import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/hoemUI.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Hoemui())),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 70, 201),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'flutter KM APP',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: const Color.fromARGB(255, 255, 252, 252),
                fontFamily: 'Kanit',
              ),
            ),
            Text(
              'luv luv luv luv luv luv',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontFamily: 'Kanit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
