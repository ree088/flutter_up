// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/customicon_button.dart';

class ABSPage extends StatelessWidget {
  const ABSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Stack(children: [
              Align(
                child: Text('ABS',
                    style: TextStyle(
                      fontSize: 25,
                    )),
              ),
              Positioned(
                  child: CustomIconButton(
                child: Icon(
                  Icons.arrow_back,
                ),
                hight: 35,
                width: 35,
                onTap: () => Navigator.pop(context),
              ))
            ]),
          )
        ],
      ),
    )));
  }
}
