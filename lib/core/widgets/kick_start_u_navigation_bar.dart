import 'package:flutter/material.dart';

class KickStartUNavigationBar extends StatelessWidget {
  final void Function(int value)? onTap;
  final int currentIndex;

  const KickStartUNavigationBar({
    super.key,
    this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      iconSize: 26,
      elevation: 0,
      unselectedFontSize: 14.0,

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.house_rounded),
          label: "Accommodations",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_grocery_store_rounded),
          label: "Shops",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer_rounded),
          label: "FAQ",
        ),
      ],
    );
  }
}
