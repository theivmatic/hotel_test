import 'package:flutter/material.dart';

class BottomButtonWidget extends StatelessWidget {
  final String buttonText;

  const BottomButtonWidget({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
        backgroundColor: MaterialStatePropertyAll(
          Color.fromRGBO(13, 114, 255, 1),
        ),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'SF-Pro-Display'
        ),
      ),
    );
  }
}
