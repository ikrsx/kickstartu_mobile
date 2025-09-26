import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/core/search/views/screens/search_screen.dart';

class FloatingSearchButton extends StatelessWidget {
  const FloatingSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => SearchScreen())),
      child: Icon(Icons.search_rounded, fontWeight: FontWeight.bold),
    );
  }
}
