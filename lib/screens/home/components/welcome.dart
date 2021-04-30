import 'package:flutter/material.dart';
import 'package:rater/screens/details/components/cast_and_crew.dart';
import 'package:rater/screens/home/home_screen.dart';
import '../../../constants.dart';
import '';

class Welcome extends StatelessWidget {
  const Welcome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/welcometoflutter.jpg'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(12.0),
          child: Text('Welcome to RATER',style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30),
          )
        ),
      ],
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(50),
    //     child: Image.asset('assets/images/welcometoflutter.jpg'),
    //   )
    // );
    // return Scaffold(
    //   appBar: AppBar(
    //   ),
    //   body: Center(
    //     child: Stack(
    //       children: <Widget>[
    //         Container(
    //           alignment: Alignment.center,
    //           child: Image.asset('assets/images/welcometoflutter.jpg',
    //               height: 20,
    //               width: 20,
    //               fit: BoxFit.cover
    //           ),
    //         ),
    //         Container(
    //           alignment: Alignment.center,
    //           child: Text('RATER', style: TextStyle(color: Colors.black, fontSize: 12.0),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

 
}