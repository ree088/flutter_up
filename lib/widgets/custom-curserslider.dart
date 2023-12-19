// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/news_items.dart';
import 'package:flutter_application_1/pages/enactus_page.dart';

class CustomCarsouelSlider extends StatefulWidget {
  //final List<String> imglist;
  const CustomCarsouelSlider({super.key});

  @override
  State<CustomCarsouelSlider> createState() => _CustomCarsouelSliderState();
}

class _CustomCarsouelSliderState extends State<CustomCarsouelSlider> {
  final _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = news
        .map((item) => InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EnactusPage())),
              child: Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item.imgUrl,
                            fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
