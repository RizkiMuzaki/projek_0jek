import 'package:flutter/material.dart';

class GojekService {
  IconData image;
  Color color;
  String title;

  GojekService({required this.image, required this.color, required this.title});
}

class Food {
  String image;
  String title;

  Food({required this.title, required this.image});
}

class Promo {
  String image;
  String title;
  String content;
  String button;

  Promo(
      {required this.image,
      required this.title,
      required this.content,
      required this.button});
}
