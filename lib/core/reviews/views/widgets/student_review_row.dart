import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/rating_badge.dart';

class StudentReviewRow extends StatelessWidget {
  final String studentName;
  final String studentImage;
  final String rating;
  final String description;

  const StudentReviewRow({
    super.key,
    required this.studentName,
    required this.rating,
    required this.description,
    required this.studentImage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(studentImage),
      ),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(studentName),
          RatingBadge(ratingText: rating, starIconSize: 17),
        ],
      ),

      subtitle: Text(description),
    );
  }
}
