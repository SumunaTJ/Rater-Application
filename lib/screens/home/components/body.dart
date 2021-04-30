import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rater/components/genre_card.dart';
import 'package:rater/constants.dart';
import 'package:rater/models/movie.dart';
import 'package:rater/screens/home/components/popularmovie.dart';
import 'dart:math' as math;

import 'categories.dart';
import 'genres.dart';
import 'movie_card.dart';
import 'movie_carousel.dart';
import 'welcome.dart';
import 'popularmovie.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Welcome(),
          SizedBox(height: kDefaultPadding),
          //Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          Text('ALL TIME FAVORITE',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30)
          ),
          MovieCarousel(),
          //PMovie(),
        ],
      ),
    );
  }
}
