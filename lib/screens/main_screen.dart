import 'package:flutter/material.dart';
import 'package:nav_bars/content/card_list.dart';
import 'package:nav_bars/widgets/custom_card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: cardList.length,
      itemBuilder: (context, index) {
        final post = cardList[index];
        return CustomCardWidget(post: post);
      },
    );
  }
}
