import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/core/reviews/models/review_model.dart';
import 'package:kickstartu_mobile/core/reviews/views/widgets/review_list_builder.dart';
import 'package:kickstartu_mobile/features/accommodation/models/accommodation_model.dart';
import 'package:kickstartu_mobile/features/accommodation/views/widgets/information_rows.dart';
import 'package:kickstartu_mobile/shared/widgets/item_title_row.dart';
import 'package:kickstartu_mobile/shared/widgets/image_carousel.dart';

class AccomodationInformationScreen extends StatelessWidget {
  final AccommodationModel accomodationModel;
  final List<ReviewModel> reviewModel;

  const AccomodationInformationScreen({
    super.key,
    required this.accomodationModel,
    required this.reviewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accomodation")),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),

        children: [
          ImageCarousel(imageNameList: accomodationModel.imageNameList),

          ItemTitleRow(
            titleText: accomodationModel.accomodationName,

            ratingText: accomodationModel.rating,

            titleSize: 35,

            ratingTextSize: 17,

            starIconSize: 17,
          ),

          Text("\t\t\t\t\t\t${accomodationModel.description}\n"),

          OwnerNameRow(value: accomodationModel.ownerName),

          OwnerContactRow(value: accomodationModel.ownerContactNumber),

          AccomodationLocationRow(value: accomodationModel.location),

          ReviewListBuilder(
            reviewModel: reviewModel,
            reviewItemName: "UTU Stays",
          ),
        ],
      ),
    );
  }
}
