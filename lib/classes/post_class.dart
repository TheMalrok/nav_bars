import 'package:flutter/material.dart';

class Post {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  const Post({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor = Colors.blueAccent,
  });

  static const List<IconData> presetIcons = [
    Icons.note_outlined,
    Icons.star_border,
    Icons.notifications_outlined,
    Icons.favorite_border,
    Icons.warning_amber_outlined,
    Icons.lightbulb_outline,
  ];

  static const List<Color> presetColors = [
    Colors.blueAccent,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.purple,
    Colors.teal,
  ];
}
