import 'package:flutter/material.dart';

class HotelRatingWidget extends StatelessWidget {
  const HotelRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromRGBO(255, 199, 0, 0.2),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.star,
            color: Color.fromRGBO(255, 168, 0, 1),
            size: 15,
          ),
          Text(''),
        ],
      ),
    );
  }
}
