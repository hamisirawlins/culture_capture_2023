import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: kSecondaryColor),
          child: Text(
            style: const TextStyle(fontSize: 18, color: Colors.white),
            text,
          ),
        ),
      ),
    );
  }
}
