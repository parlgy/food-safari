import 'dart:ui';
import 'package:flutter/material.dart';

class Category {
  String name;
  Color color;
  String imgName;
  bool isSelected;
  String description;
  List<Category>? subCategories;

  Category(
      {required this.name,
      required this.color,
      required this.imgName,
      required this.isSelected,
      required this.description,
      this.subCategories});
}
