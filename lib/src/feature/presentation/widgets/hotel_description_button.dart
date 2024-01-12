import 'package:flutter/material.dart';

class HotelDescriptionButtonWidget extends StatelessWidget {
  final dynamic buttonIcon;
  final String buttonText;

  const HotelDescriptionButtonWidget({
    super.key,
    required this.buttonIcon,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: buttonIcon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                buttonText,
                style: const TextStyle(
                  color: Color.fromRGBO(44, 48, 53, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Самое необходимое',
                style: TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 100),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromRGBO(44, 48, 53, 1),
          ),
        ],
      ),
    );
  }
}
