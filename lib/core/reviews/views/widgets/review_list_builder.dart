import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/core/reviews/models/review_model.dart';
import 'package:kickstartu_mobile/core/reviews/views/widgets/review_form.dart';
import 'package:kickstartu_mobile/core/reviews/views/widgets/student_review_row.dart';

class ReviewListBuilder extends StatelessWidget {
  final List<ReviewModel> reviewModel;
  final String reviewItemName;

  const ReviewListBuilder({
    super.key,
    required this.reviewModel,
    required this.reviewItemName,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),

      children: [
        ListTile(
          dense: true,

          title: Text(
            "Student Reviews",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),

          trailing: IconButton(
            onPressed: () => _openReviewForm(context, reviewItemName),
            icon: Icon(Icons.add),
          ),
        ),

        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: reviewModel.length,
          itemBuilder: (context, index) => StudentReviewRow(
            studentImage: reviewModel[index].userImage,
            studentName: reviewModel[index].userName,
            rating: reviewModel[index].userRating,
            description: reviewModel[index].reviewDescription,
          ),
        ),
      ],
    );
  }

  Future<dynamic> _openReviewForm(BuildContext context, String reviewItemName) {
    return showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) => ReviewForm(reviewItemName: reviewItemName),
    );
  }
}
