import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final String ratingText;
  final double? ratingTextSize;
  final double? starIconSize;

  const RatingBadge({
    super.key,
    this.starIconSize,
    this.ratingTextSize,
    required this.ratingText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, size: starIconSize ?? 12, color: Colors.amber),
        Text(ratingText, style: TextStyle(fontSize: ratingTextSize)),
      ],
    );
  }
}
