import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/m2.jpg'),
          AssetImage('assets/w1.jpeg'),
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/w4.jpeg'),
        ],
        autoplay: true,
//        animationCurve: Curves.fastOutSlowIn,
//        animationDuration: Duration(microseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 2.0,
      ),
    );
  }
}
