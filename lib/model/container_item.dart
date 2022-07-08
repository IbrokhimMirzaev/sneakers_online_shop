import 'package:flutter/material.dart';

class MyItem {
  final String name;
  final String imagePath;
  final String aboutInfo;
  final String price;

  MyItem({
    required this.name,
    required this.price,
    required this.aboutInfo,
    required this.imagePath,
  });
}
