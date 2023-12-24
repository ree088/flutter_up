// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/stuact_page.dart';
import 'package:flutter_application_1/screens/ayouth_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                /* Image.network(
                  "https://i.pinimg.com/564x/90/66/4c/90664cab760b7192ca4fa38379741021.jpg",
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
                      MaterialPageRoute(builder: (context) => StudentActPage()),
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
