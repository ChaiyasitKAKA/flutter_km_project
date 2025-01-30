import 'package:flutter/material.dart';

class Hoem04ui extends StatefulWidget {
  const Hoem04ui({super.key});

  @override
  State<Hoem04ui> createState() => _Hoem04uiState();
}

class _Hoem04uiState extends State<Hoem04ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'kaka',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit', // เปลี่ยนจาก fontStyle เป็น fontFamily
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}
