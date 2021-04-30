import 'package:flutter/material.dart';
import 'package:rater/screens/login/login_screen.dart';
import 'package:rater/screens/signup/components/background.dart';
import 'package:rater/components/already_have_an_account_acheck.dart';
import 'package:rater/components/rounded_button.dart';
import 'package:rater/components/rounded_input_field.dart';
import 'package:rater/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "username",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "phone number",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
          ],
        ),
      ),
    );
  }
}