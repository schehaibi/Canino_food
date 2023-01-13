import 'package:flutter/material.dart';

class Promotion {
  Color color;
  String imgUrl;
  String title;
  String description;

  Promotion(
      {required this.color,
      required this.imgUrl,
      required this.description,
      required this.title});

  static List<Promotion> getAllPromotions() {
    return [
      Promotion(
          imgUrl: 'assets/images/Bag1.png',
          title: 'Royal Canin\nAdult Pomeraniann',
          description: 'Get an interesting promo\nhere, without conditions',
          color: const Color(0xffFD9340)),
      Promotion(
          imgUrl: 'assets/images/Bag2.png',
          title: 'Happy Dog\nSensible - Adult',
          description: 'Get an interesting promo\nhere, without conditions',
          color: const Color(0xffE2083D)),
    ];
  }
}
