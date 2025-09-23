import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imageNameList;
  const ImageCarousel({super.key, required this.imageNameList});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 259),
      child: CarouselView(
        itemExtent: double.infinity,
        children: List.generate(
          imageNameList.length,
          (index) => Image.asset(imageNameList[index], fit: BoxFit.cover),
        ),
      ),
    );
  }
}
