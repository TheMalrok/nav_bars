import 'package:flutter/material.dart';
import 'package:nav_bars/classses/post_class.dart';

class CustomCardWidget extends StatelessWidget {
  final Post post;

  const CustomCardWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: post.iconColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(post.icon, color: post.iconColor, size: 32),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    post.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              post.subtitle,
              style: const TextStyle(height: 1.5, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
