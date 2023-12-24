// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter_application_1/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ayouth_screen.dart';
import 'package:flutter_application_1/widgets/circlebutton.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Body(),
            //BottomBar()
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
            onTabChange: (index) {
              print(index);
            },
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
                icon: Icons.chat_bubble,
                text: 'Chat',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
          elevation: 9,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                /*Image.network(
                  "https://example.com/image.png",
                  width: 100,
                  height: 100,
                ),*/
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Student Activites",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YouthCare()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.white,
          shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
          elevation: 9,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                /*Image.network(
                  "https://example.com/image.png",
                  width: 100,
                  height: 100,
                ),*/
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Youth Care",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YouthCare()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
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
        SizedBox(
          height: 20,
        ),
        const SearchTextField(),
      ]),
    );
  }
}
