import 'package:flutter/material.dart';
import 'package:rater/constants.dart';
import 'package:rater/screens/login/login_screen.dart';
import 'package:rater/screens/signup/signup_screen.dart';
import 'package:rater/screens/Welcome/component/background.dart';
import 'package:rater/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
            ),
            Text(
              "TO",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
            ),
            Text(
              "RATER",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
            ),

            SizedBox(height: size.height * 0.05),
            // Image.asset(
            //   "assets/image/rather2.png",
            //   height: size.height * 0.35,
            // ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}