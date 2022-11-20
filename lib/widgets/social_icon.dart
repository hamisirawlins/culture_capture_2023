import 'package:flutter/material.dart';

import '../constants.dart';

class SocialIcon extends StatelessWidget {
  final VoidCallback press;
  final String icon;
  const SocialIcon({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: kSecondaryColor),
              shape: BoxShape.circle),
          child: Image.asset(
            icon,
            height: size.height * 0.03,
          )),
    );
  }
}
