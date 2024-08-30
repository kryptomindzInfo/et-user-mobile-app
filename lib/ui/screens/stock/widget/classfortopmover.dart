import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl;
  final String title;
  final String icon;
  final String description;
  final Color desColor;

  ListItem({
    required this.imageUrl,
    required this.title,
    required this.icon,
    required this.description,
    required this.desColor,
  });
}
