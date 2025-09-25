import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/item_title_row.dart';

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
              ItemTitleRow(titleText: cardTitle, ratingText: cardRatingText),
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
