import 'package:flutter/material.dart';

class HotelAdressWidget extends StatelessWidget {
  final String hotelAdress;

  const HotelAdressWidget({super.key, required this.hotelAdress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        hotelAdress,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(13, 114, 255, 1),
          fontFamily: 'SF-Pro-Display'
        ),
      ),
    );
  }
}
