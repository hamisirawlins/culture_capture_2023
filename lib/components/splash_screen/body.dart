import 'package:culture_capture/components/login_screen/body.dart';
import 'package:culture_capture/components/signup_screen/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/apps_divider.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/social_icon.dart';
import 'background.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

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
                    print("Google");
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
