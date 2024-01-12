import 'package:flutter/material.dart';

class HotelPriceWidget extends StatelessWidget {
  final int minialPrice;
  final String priceForIt;

  const HotelPriceWidget(
      {super.key, required this.minialPrice, required this.priceForIt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'от $minialPrice ₽',
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          priceForIt,
          style: const TextStyle(
            color: Color.fromRGBO(130, 135, 150, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
