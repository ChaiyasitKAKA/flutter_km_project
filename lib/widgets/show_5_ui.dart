import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Show5Ui extends StatelessWidget {
  const Show5Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.instagram,
          size: MediaQuery.of(context).size.width * 0.5,
          color: Colors.pink,
        ),
      ),
    );
  }
}