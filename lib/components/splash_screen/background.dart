import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  final Widget child;
  const SplashBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/africa.png",
                width: size.width * 0.2,
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/dance.png",
              width: size.width * 0.3,
            ),
          ),
          child
        ],
      ),
    );
  }
}
