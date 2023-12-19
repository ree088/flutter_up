// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unnecessary_import, sort_child_properties_last, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/news_items.dart';
import 'package:flutter_application_1/pages/abs_page.dart';

import 'package:flutter_application_1/pages/enactus_page.dart';
import 'package:flutter_application_1/pages/sms_page.dart';
import 'package:flutter_application_1/pages/tedx_page.dart';

import 'package:flutter_application_1/screens/main_screen.dart';
import 'package:flutter_application_1/widgets/card.dart';
import 'package:flutter_application_1/widgets/custom-curserslider.dart';
import 'package:flutter_application_1/widgets/customicon_button.dart';

class StudentAct extends StatelessWidget {
  const StudentAct({super.key});

  @override
  Widget build(BuildContext context) {
    //final List<String> imglist = [
    // 'https://th.bing.com/th/id/OIP.vX5uwUoaIedeA1sF9ze_qAHaEK?w=307&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.9WlGpsiRxXIng4HaDNFC6QHaEh?w=282&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.YARaVAGLh-r7l09H9QDfVQAAAA?w=279&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.lcUZeQ3mcNKqwBu2vX-uQQHaE7?w=277&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    //];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IntrinsicHeight(
                child: Stack(children: [
                  Align(
                    child: Text(
                      'Student Activites',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Positioned(
                      child: CustomIconButton(
                    child: Icon(Icons.arrow_back),
                    hight: 35,
                    width: 35,
                    onTap: () => Navigator.pop(context),
                  ))
                ]),
              ),
              const CustomCarsouelSlider(),
              const SizedBox(height: 16.0),
              const SizedBox(
                height: 8.0,
              ),
              Card(
                color: Colors.white,
                shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Image.network(
                        'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/42888276_1012732002243467_8186657899007705088_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=300f58&_nc_eui2=AeFP6s-p9ZQ26sBKiQ0-lcASILwi6rSpHt8gvCLqtKke384LwMEe2mH9xoJhfHWOomtmLEWRgW2Medi7HkP0NLOc&_nc_ohc=J2Va-VTdAmsAX9e-N7H&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDlz9XYtyQHnWhL5nNdEKC8uaN8imBE6aa_gXpgNDjzTw&oe=65A6AB3A',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Enactus",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
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
                            MaterialPageRoute(
                                builder: (context) => EnactusPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Card(
                color: Colors.white,
                shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Image.network(
                        'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/333030504_518908236990378_3098292104127359883_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeFnzfljVEMLlDNJEbmvtg8dSIISZM1MFy1IghJkzUwXLVAuzh71L6seOagvY60U8H2FgFuBaqhSXVwtHnw0FJi-&_nc_ohc=XROwa0H0d-MAX8j3uUT&_nc_ht=scontent.fcai1-2.fna&oh=00_AfC9qIrL5-A5qsAoPU9fyYITTvU42fvPfdTUzE2_IfWW6w&oe=65852010',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "TEDx",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
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
                            MaterialPageRoute(builder: (context) => TEDxPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              MyCard(
                imageUrl:
                    'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/342368809_130233890039251_8699168662586063355_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeGLT7UDPaEhXnDnrnP31jGXmlQpmTIfyZiaVCmZMh_JmAJu0OORtSpbda6hLSji1awhve8kOfI0dWwE9Arl5NAz&_nc_ohc=77SX4fZWMQUAX-RiVVu&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDiw57FPEA9op2lIRZmgoKFUWsouU3Vb2jMXVxSKxBW2A&oe=65846804',
                title: 'SMS AU',
                onPressed: () {
                  Navigator.pushNamed(context, SMSPage() as String);
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
