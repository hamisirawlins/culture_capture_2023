import 'package:flutter/material.dart';

import '../constants.dart';

class AppsDivider extends StatelessWidget {
  const AppsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: Row(
        children: const <Widget>[
          Expanded(
            child: Divider(
              color: kSecondaryColor,
              height: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Or",
                style: TextStyle(
                    fontSize: 14,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600)),
          ),
          Expanded(
            child: Divider(
              color: kSecondaryColor,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
