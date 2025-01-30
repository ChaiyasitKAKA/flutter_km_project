import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/hoem05_ui.dart';
import 'package:flutter_km_project/views/home03_ui.dart';
import 'package:flutter_km_project/views/home06ui.dart';

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
      home: Home06ui(),
    );
  }
}
