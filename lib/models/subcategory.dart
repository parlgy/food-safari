import 'package:flutter/material.dart';
import 'package:qr_app/models/categorypart.dart';

import 'category.dart';
import 'dart:ui';

class SubCategory extends Category {
  List<CategoryPart>? parts;
  SubCategory({
    this.parts,
    required String name,
    required String description,
    required Color color,
    required String imgName,
    required bool isSelected,
  }) : super(
            name: name,
            color: color,
            imgName: imgName,
            description: description,
            isSelected: isSelected);
}
