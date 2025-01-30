import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_1_ui.dart';
import 'package:flutter_km_project/widgets/show_2_ui.dart';
import 'package:flutter_km_project/widgets/show_3_ui.dart';
import 'package:flutter_km_project/widgets/show_4_ui.dart';
import 'package:flutter_km_project/widgets/show_5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Hoem05Ui extends StatefulWidget {
  const Hoem05Ui({super.key});


  @override
  State<Hoem05Ui> createState() => _Hoem05UiState();
}


class _Hoem05UiState extends State<Hoem05Ui> {
  int _selectedIndex = 2;

  List showUI = [
    Show1Ui(),
    Show2Ui(),
    Show3Ui(),
    Show4Ui(),
    Show5Ui(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 34, 223),
        title: Text(
          'Iam the fat bomtomnvabar 01 ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
            ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Value) {
          setState(() {
            _selectedIndex = Value;
          });
        },
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 31, 35, 240),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.google,
            ),
            label: 'google',
          ),BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.superpowers,
            ),
            label: 'superpowers',
          ),BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            label: 'line',
          ),BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.instagram,
            ),
            label: 'instagram',
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}