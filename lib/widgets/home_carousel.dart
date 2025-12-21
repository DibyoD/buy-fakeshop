import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int _currentIndex = 0;

  final List<String> images = [
    "assets/images/img_1.jpg",
    "assets/images/img_2.jpg",
    "assets/images/img_3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      height: 200,
      child: CarouselSlider(
        items: images.map((img) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(img, fit: BoxFit.fill, width: double.infinity),
          );
        }).toList(),

        options: CarouselOptions(
          height: double.infinity,
          viewportFraction: 1,
          autoPlay: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
