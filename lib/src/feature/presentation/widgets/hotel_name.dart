import 'package:flutter/material.dart';

class HotelNameWidget extends StatelessWidget {
  final String hotelName;

  const HotelNameWidget({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Text(
      hotelName,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'SF-Pro-Display'
      ),
    );
  }
}
