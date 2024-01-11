import 'package:flutter/material.dart';
import 'package:hotel_test/src/feature/presentation/widgets/image_carousel_widget.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Отель',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: const Column(
        children: [
          //карусель
          ImageCarouselWiidget(),
          //рейтинг
          //название
          //стоимость
        ],
      ),
    );
  }
}
