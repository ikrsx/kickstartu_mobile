import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String cardTitle;
  final String cardSubtitle;
  final String cardRatingText;
  final String imageName;

  const ListCard({
    super.key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.cardRatingText,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSection(imageName: imageName),
            CardTitleSection(cardTitle: cardTitle, cardRating: cardRatingText),
            Text(cardSubtitle, style: TextStyle(fontSize: 12)),
          ],
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

class CardTitleSection extends StatelessWidget {
  final String cardTitle;
  final String cardRating;

  const CardTitleSection({
    super.key,
    required this.cardTitle,
    required this.cardRating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cardTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Row(children: [Icon(Icons.star, size: 15), Text(cardRating)]),
      ],
    );
  }
}
