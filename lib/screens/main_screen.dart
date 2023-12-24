// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unused_import

import 'package:flutter_application_1/pages/favorite_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';
import 'package:flutter_application_1/pages/stuact_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ayouth_screen.dart';
import 'package:flutter_application_1/widgets/circlebutton.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> listoptions = <Widget>[
    HomePage(),
    Favorites(),
    SearchPage(),
    ProfilePage()
  ];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(),
            SizedBox(
              height: 20,
            ),
            Text(
              ' Explor more with \nStudents Assistant',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            listoptions[_selectedIndex],
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(0, 57, 202, 0.98),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(0, 57, 202, 0.98),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 116, 211, 255),
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 57, 202, 0.98),
            Color.fromARGB(255, 116, 211, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, \n Ree',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            CircleButton(
              icon: Icons.notifications,
              onPressed: () {},
            ),
          ],
        ),
      ]),
    );
  }
}
