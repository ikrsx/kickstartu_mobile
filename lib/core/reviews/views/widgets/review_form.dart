import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ReviewForm extends StatefulWidget {
  final String reviewItemName;

  const ReviewForm({super.key, required this.reviewItemName});

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  double ratingValue = 0;
  TextEditingController? commentValue;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Review ${widget.reviewItemName}\n",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        ),

        CircleAvatar(
          backgroundImage: AssetImage("assets/images/motel.jpg"),
          radius: 45,
        ),

        Text(
          "Student Name",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          textAlign: TextAlign.center,
        ),

        RatingGenerator(
          value: ratingValue,
          onValueChanged: (v) => setState(() {
            ratingValue = v;
          }),
        ),

        CommentTextFeild(commentController: commentValue),

        UploadReviewButton(),
      ],
    );
  }
}

class UploadReviewButton extends StatelessWidget {
  const UploadReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FilledButton(onPressed: () {}, child: Text("Add My Review")),
    );
  }
}

class CommentTextFeild extends StatelessWidget {
  final TextEditingController? commentController;
  final Function(String)? onChanged;

  const CommentTextFeild({super.key, this.commentController, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: TextFormField(
        controller: commentController,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Add Your Comment",
        ),
        maxLines: 5,
      ),
    );
  }
}

class RatingGenerator extends StatelessWidget {
  final dynamic Function(double)? onValueChanged;
  final double value;

  const RatingGenerator({super.key, required this.value, this.onValueChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),

        child: RatingStars(
          starSize: 25,
          onValueChanged: onValueChanged,
          value: value,
        ),
      ),
    );
  }
}
