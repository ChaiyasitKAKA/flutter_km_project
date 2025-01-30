import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_1_ui.dart';
import 'package:flutter_km_project/widgets/show_2_ui.dart';
import 'package:flutter_km_project/widgets/show_3_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class Home06ui extends StatefulWidget {
  const Home06ui({super.key});

  @override
  State<Home06ui> createState() => _Home06uiState();
}

class _Home06uiState extends State<Home06ui> {
  int _selectedIndex = 0;
  
  List showUI = [
    Show1Ui(),
    Show2Ui(),
    Show3Ui(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(204, 255, 232, 23),
        title: Text(
          'leborn jammm bomtomnvabar 02 ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
            ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (Value) {
          setState(() {
            _selectedIndex = Value;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            title: Text(
              'FACEBOOK',
              ),
              selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.google
            ),
            title: Text(
              'GOOGLE',
            ),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.superpowers,
            ),
            title: Text(
              'SUPERPOWERS',
            ),
            selectedColor: Colors.redAccent,
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}