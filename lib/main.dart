import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/introduction_screen.dart';
import 'package:flutter_km_project/views/splash-screen.dart';

void main() {
  runApp(
    FlutterKm(),
  );
}

class FlutterKm extends StatefulWidget {
  const FlutterKm({super.key});

  @override
  State<FlutterKm> createState() => _FlutterKmState();
}

class _FlutterKmState extends State<FlutterKm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionScreenui(),
    );
  }
}
