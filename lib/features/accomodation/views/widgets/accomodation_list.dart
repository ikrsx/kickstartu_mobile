import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/shared/widgets/list_card.dart';

class AccomodationList extends StatelessWidget {
  const AccomodationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListCard(
        cardTitle: "UTU Stay",
        cardSubtitle: "UTU Stay's Location\nUTU Stay's Rate",
        cardRatingText: "4.5",
        imageName: "assets/images/motel.jpg",
      ),
      itemCount: 10,
    );
  }
}
