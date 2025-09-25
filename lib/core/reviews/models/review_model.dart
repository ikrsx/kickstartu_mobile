class ReviewModel {
  final String userImage;
  final String userName;
  final String reviewDescription;
  final String userRating;

  const ReviewModel({
    required this.userName,
    required this.reviewDescription,
    required this.userImage,
    required this.userRating,
  });
}
