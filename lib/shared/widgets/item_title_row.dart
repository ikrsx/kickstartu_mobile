import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/rating_badge.dart';

class ItemTitleRow extends StatelessWidget {
  final String titleText;
  final String ratingText;
  final double? titleSize;
  final double? starIconSize;
  final double? ratingTextSize;

  const ItemTitleRow({
    super.key,
    required this.titleText,
    required this.ratingText,
    this.titleSize,
    this.starIconSize,
    this.ratingTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,

      title: Text(
        titleText,
        style: TextStyle(
          fontSize: titleSize ?? 25,
          fontWeight: FontWeight.bold,
        ),
      ),

      trailing: RatingBadge(
        starIconSize: starIconSize,
        ratingTextSize: ratingTextSize,
        ratingText: ratingText,
      ),
    );
  }
}
