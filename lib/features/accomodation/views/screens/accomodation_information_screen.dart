import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/features/accomodation/models/accomodation_model.dart';
import 'package:kickstartu_mobile/features/accomodation/views/widgets/information_rows.dart';
import 'package:kickstartu_mobile/shared/widgets/appbar_buttons.dart';
import 'package:kickstartu_mobile/shared/widgets/image_carousel.dart';
import 'package:kickstartu_mobile/shared/widgets/screen_title_row.dart';
import 'package:kickstartu_mobile/shared/widgets/student_review_row.dart';

class AccomodationInformationScreen extends StatelessWidget {
  final AccomodationModel accomodationModel;

  const AccomodationInformationScreen({
    super.key,
    required this.accomodationModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accomodation"),
        actions: [AddToQueueButton(), ShareButton()],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          ImageCarousel(
            imageNameList: accomodationModel.imageNameList,
          ), // Image Crousel
          ScreenTitleRow(
            titleText: accomodationModel.accomodationName,
            textRating: accomodationModel.rating,
          ),
          ListTile(
            subtitle: Text(accomodationModel.description),
          ), // About Accomodation
          OwnerNameRow(value: accomodationModel.ownerName), // Owner Name
          OwnerContactRow(
            value: accomodationModel.ownerContactNumber,
          ), // Owner Contact Number
          AccomodationLocationRow(
            value: accomodationModel.location,
          ), // Accomodation Location
          ListTile(
            dense: true,
            title: Text(
              "Student Reviews",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          StudentReviewRow(
            studentName: "Student Name",
            reviewDescription: "Review Description",
            reviewRating: "4.5",
          ),
        ],
      ),
    );
  }
}
