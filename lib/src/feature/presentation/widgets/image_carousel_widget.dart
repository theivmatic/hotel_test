import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class ImageCarouselWiidget extends StatefulWidget {
  const ImageCarouselWiidget({super.key});

  @override
  State<ImageCarouselWiidget> createState() => _ImageCarouselWiidgetState();
}

class _ImageCarouselWiidgetState extends State<ImageCarouselWiidget> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: NetworkImage(''),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
