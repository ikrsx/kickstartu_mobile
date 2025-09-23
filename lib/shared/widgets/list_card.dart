import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/rating_badge.dart';

class ListCard extends StatelessWidget {
  final String cardTitle;
  final String cardSubtitle;
  final String cardRatingText;
  final String imageName;
  final void Function()? onTap;

  const ListCard({
    super.key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.cardRatingText,
    required this.imageName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection(imageName: imageName),
              CardTitleRow(cardTitle: cardTitle, cardRating: cardRatingText),
              ListTile(
                dense: true,
                title: Text(cardSubtitle, style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String imageName;

  const ImageSection({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Image.asset(imageName),
    );
  }
}

class CardTitleRow extends StatelessWidget {
  final String cardTitle;
  final String cardRating;
  final double? titleSize;
  final double? starIconSize;
  final double? ratingTextSize;

  const CardTitleRow({
    super.key,
    required this.cardTitle,
    required this.cardRating,
    this.titleSize,
    this.starIconSize,
    this.ratingTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        cardTitle,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      trailing: RatingBadge(
        starIconSize: starIconSize,
        ratingTextSize: ratingTextSize,
        ratingText: "4.5",
      ),
    );
  }
}
