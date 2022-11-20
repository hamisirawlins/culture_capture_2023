import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't Have an Account?" : "Already Have An Account?",
          style: const TextStyle(color: kSecondaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Log In",
            style:
                const TextStyle(color: kSecondaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
