class AccomodationModel {
  final List<String> imageNameList;
  final String accomodationName;
  final String description;
  final String rating;
  final String location;
  final String ownerName;
  final String ownerContactNumber;

  const AccomodationModel({
    required this.imageNameList,
    required this.accomodationName,
    required this.description,
    required this.rating,
    required this.location,
    required this.ownerName,
    required this.ownerContactNumber,
  });
}
