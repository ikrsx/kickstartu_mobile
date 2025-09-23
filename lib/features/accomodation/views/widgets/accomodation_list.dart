import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/features/accomodation/models/accomodation_model.dart';
import 'package:kickstartu_mobile/features/accomodation/views/screens/accomodation_information_screen.dart';
import 'package:kickstartu_mobile/shared/widgets/list_card.dart';

class AccomodationList extends StatelessWidget {
  const AccomodationList({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy model
    final List<AccomodationModel> modelList = [
      AccomodationModel(
        imageNameList: ["assets/images/motel.jpg", "assets/images/motel.jpg"],
        description: "Description",
        accomodationName: "UTU Stay",
        rating: "4.5",
        ownerName: "John Wick",
        ownerContactNumber: "1234567890",
        location: "Dehradun",
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
            ),
          ),
        ),
      ),
      itemCount: 1,
    );
  }
}
