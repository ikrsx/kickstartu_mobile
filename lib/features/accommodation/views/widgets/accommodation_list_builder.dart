import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/core/reviews/models/review_model.dart';
import 'package:kickstartu_mobile/features/accommodation/models/accommodation_model.dart';
import 'package:kickstartu_mobile/features/accommodation/views/screens/accomodation_information_screen.dart';
import 'package:kickstartu_mobile/shared/widgets/list_card.dart';

class AccommodationListBuilder extends StatelessWidget {
  const AccommodationListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy model
    final List<AccommodationModel> modelList = [
      AccommodationModel(
        imageNameList: ["assets/images/motel.jpg", "assets/images/motel.jpg"],
        description: "Description",
        accomodationName: "UTU Stay",
        rating: "4.5",
        ownerName: "John Wick",
        ownerContactNumber: "1234567890",
        location: "Dehradun",
      ),
    ];

    final List<ReviewModel> revList = [
      ReviewModel(
        userName: "Student Name",
        reviewDescription: "Description",
        userImage: "assets/images/motel.jpg",
        userRating: "4.5",
      ),
    ];

    return ListView.builder(
      itemBuilder: (context, index) => ListCard(
        cardTitle: "UTU Stay",

        cardSubtitle: "UTU Stay's Location\nUTU Stay's Rate",

        cardRatingText: "4.5",

        imageName: "assets/images/motel.jpg",

        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (builder) => AccomodationInformationScreen(
              accomodationModel: modelList[index],
              reviewModel: revList,
            ),
          ),
        ),
      ),

      itemCount: 1,
    );
  }
}
