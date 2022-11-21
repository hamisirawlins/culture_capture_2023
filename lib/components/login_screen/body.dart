import 'package:culture_capture/components/signup_screen/body.dart';
import 'package:culture_capture/constants.dart';
import 'package:culture_capture/widgets/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/already_have_account_check.dart';
import '../../widgets/text_input.dart';
import 'background.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Login",
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
                RoundedButton(text: "Login", press: signIn),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AlreadyHaveAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return SignUpScreen();
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
