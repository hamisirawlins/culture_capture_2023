import 'package:culture_capture/constants.dart';
import 'package:culture_capture/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/text_input.dart';
import 'background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: GoogleFonts.cormorant(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                "assets/images/saloon.png",
                height: size.height * 0.25,
              ),
            ),
            const TextInputContainer(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kSecondaryColor,
                    ),
                    hintText: "Email Address",
                    border: InputBorder.none),
              ),
            ),
            const TextInputContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kSecondaryColor,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: kSecondaryColor,
                    ),
                    hintText: "Password",
                    border: InputBorder.none),
              ),
            ),
            RoundedButton(text: "Login", press: () {})
          ],
        ),
      ),
    );
  }
}
