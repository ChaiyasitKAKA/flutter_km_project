import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/hoem04ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03Ui extends StatefulWidget {
  const Home03Ui({super.key});

  @override
  State<Home03Ui> createState() => _Home03UiState();
}

class _Home03UiState extends State<Home03Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'urururrururururur',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white, 
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context); 
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            icon: const Icon(Icons.exit_to_app),
            color: Colors.white, 
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hoem04ui(), 
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, 
              ),
              child: const Text(
                'Go to Home04 UI',
                style: TextStyle(
                  color: Colors.white, 
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("luvluvluvluvluv"),
              accountEmail: Text("nononononoonoon"),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200")
              ),
               otherAccountsPictures: [
          Image.asset(
            'assets/images/pic2.png',
          ),
          Icon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
        ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.home,
                color: Colors.purple,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              title: Text(
                'Home',
              ) ,
              subtitle: Text(
                'no way home',
              ) ,
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
              ),
              title: Text( 
                'Settings',),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.infoCircle,
              ),
              title: Text(
                'About',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.signOutAlt,
              ),
              title: Text(
                'Logout',
              ),
            ),  
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.exit_to_app,
              ),
              title: Text(
                'Exit',
              ),
              ),
          ],
        ),
      ),
    );
  }
}
