import 'package:flutter/material.dart';
import 'package:rater/screens/home/components/welcome.dart';
import 'package:rater/screens/home/home_screen.dart';
import 'package:rater/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home: WelcomeScreen(),
    );
  }
}
