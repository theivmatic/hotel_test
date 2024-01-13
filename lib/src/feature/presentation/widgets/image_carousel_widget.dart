import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class ImageCarouselWidget extends StatefulWidget {
  final String imageUrlOne;
  // final String imageUrlTwo;
  // final String imageUrlThree;
  const ImageCarouselWidget(
      {super.key,
      required this.imageUrlOne,
      // required this.imageUrlTwo,
      // required this.imageUrlThree
      });

  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
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
    return CustomCarouselSlider(
      items: itemList,
      height: 250,
      autoplay: false,
    );
  }
}
