import 'package:flutter/material.dart';

class HotelPeculiaritiesWidget extends StatelessWidget {
  final dynamic peculiarities;
  const HotelPeculiaritiesWidget({super.key, required this.peculiarities});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        Container(
          height: 29,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              peculiarities[0],
              style: const TextStyle(
                color: Color.fromRGBO(130, 135, 150, 1),
              ),
            ),
          ),
        ),
        Container(
          height: 29,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              peculiarities[1],
              style: const TextStyle(
                color: Color.fromRGBO(130, 135, 150, 1),
              ),
            ),
          ),
        ),
        Container(
          height: 29,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              peculiarities[2],
              style: const TextStyle(
                color: Color.fromRGBO(130, 135, 150, 1),
              ),
            ),
          ),
        ),
        Container(
          height: 29,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              peculiarities[3],
              style: const TextStyle(
                color: Color.fromRGBO(130, 135, 150, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
