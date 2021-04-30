import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;
import 'package:rater/models/movie.dart';

import '../../../constants.dart';
import 'movie_card.dart';

class PMovie extends StatefulWidget {
  @override
  PopularMovie createState() => PopularMovie();
}

class PopularMovie extends State<PMovie> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      // so that we can have small portion shown on left and right side
      viewportFraction: 0.8,
      // by default our movie poster
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          //scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length, // we have 3 demo movies
          itemBuilder: (context, index) => MovieSlider(index),
        ),
      ),
    );
  }

  Widget MovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      double value = 0;
      return AnimatedOpacity(
        duration: Duration(milliseconds: 350),
        opacity: initialPage == index ? 1 : 0.4,
        child: Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index]),
        ),
      );
    },
  );
}
