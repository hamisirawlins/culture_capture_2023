import 'package:firebase_auth/firebase_auth.dart';
import 'package:culture_capture/components/login_screen/body.dart';
import 'package:culture_capture/constants.dart';
import 'package:culture_capture/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/already_have_account_check.dart';
import '../../widgets/text_input.dart';
import 'background.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SignUpBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sign Up",
                  style: GoogleFonts.cormorant(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    "assets/images/saloon.png",
                    height: size.height * 0.25,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                TextInputContainer(
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: kSecondaryColor,
                        ),
                        hintText: "Email Address",
                        border: InputBorder.none),
                  ),
                ),
                TextInputContainer(
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
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
                TextInputContainer(
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: kSecondaryColor,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: kSecondaryColor,
                        ),
                        hintText: "Confirm Password",
                        border: InputBorder.none),
                  ),
                ),
                RoundedButton(text: "Sign Up", press: () {}),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AlreadyHaveAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return LoginScreen();
                        }),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
