import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/rating_badge.dart';

class StudentReviewRow extends StatelessWidget {
  final String studentName;
  final String reviewRating;
  final String reviewDescription;

  const StudentReviewRow({
    super.key,
    required this.studentName,
    required this.reviewRating,
    required this.reviewDescription,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_box),
      title: ReviewTitleRow(
        studentName: studentName,
        reviewRating: reviewRating,
      ),
      subtitle: Text(reviewDescription),
    );
  }
}

class ReviewTitleRow extends StatelessWidget {
  final String studentName;
  final String reviewRating;

  const ReviewTitleRow({
    super.key,
    required this.studentName,
    required this.reviewRating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(studentName),
        RatingBadge(ratingText: reviewRating, ratingTextSize: 12),
      ],
    );
  }
}
