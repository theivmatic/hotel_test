import 'package:flutter/material.dart';

class HotelRatingWidget extends StatelessWidget {
  final double hotelRating;
  final String hotelRatingName;

  const HotelRatingWidget(
      {super.key, required this.hotelRating, required this.hotelRatingName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 149,
          height: 29,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromRGBO(255, 199, 0, 0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromRGBO(255, 168, 0, 1),
                  size: 15,
                ),
                Text(
                  '${hotelRating.toInt()} $hotelRatingName',
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 168, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF-Pro-Display'
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
