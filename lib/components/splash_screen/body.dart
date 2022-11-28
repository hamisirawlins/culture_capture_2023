import 'package:culture_capture/components/login_screen/body.dart';
import 'package:culture_capture/components/signup_screen/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../widgets/apps_divider.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/show_snackbar.dart';
import '../../widgets/social_icon.dart';
import 'background.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  Future googleSignIn() async {
    try {
      final GoogleSignInAccount? google_user = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? google_auth =
          await google_user?.authentication;
      if (google_auth?.accessToken != null && google_auth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
            accessToken: google_auth?.accessToken,
            idToken: google_auth?.idToken);
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
    Phoenix.rebirth(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SplashBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Culture Capture",
              style: GoogleFonts.cormorant(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SvgPicture.asset(
              "assets/logos/M-Standard.svg",
              height: size.height * 0.2,
            ),
            RoundedButton(
              text: "Log In",
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
            ),
            RoundedButton(
              text: "Sign Up",
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
            ),
            const AppsDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  press: () {
                    googleSignIn();
                  },
                  icon: "assets/icons/search.png",
                ),
                SocialIcon(
                  press: () {
                    print("Facebook");
                  },
                  icon: "assets/icons/facebook.png",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
