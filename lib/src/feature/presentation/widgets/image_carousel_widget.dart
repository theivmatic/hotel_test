import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class ImageCarouselWiidget extends StatefulWidget {
  final String imageUrlOne;
  final String imageUrlTwo;
  final String imageUrlThree;
  const ImageCarouselWiidget(
      {super.key,
      required this.imageUrlOne,
      required this.imageUrlTwo,
      required this.imageUrlThree});

  @override
  State<ImageCarouselWiidget> createState() => _ImageCarouselWiidgetState();
}

class _ImageCarouselWiidgetState extends State<ImageCarouselWiidget> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(''),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(''),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(''),
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomCarouselSlider(
          items: itemList,
          height: 250,
        ),
      ),
    );
  }
}
