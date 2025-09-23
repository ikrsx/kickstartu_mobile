import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/rating_badge.dart';

class ScreenTitleRow extends StatelessWidget {
  final String titleText;
  final String textRating;

  const ScreenTitleRow({
    super.key,
    required this.titleText,
    required this.textRating,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        titleText,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
      trailing: RatingBadge(
        ratingText: textRating,
        starIconSize: 22,
        ratingTextSize: 17,
      ),
    );
  }
}


// TODO: RENAME THIS MODULE TO SOMETHING ELSE