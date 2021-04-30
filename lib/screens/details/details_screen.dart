import 'package:flutter/material.dart';
import 'package:rater/models/movie.dart';
import 'package:rater/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(movie: movie),
    );
  }
}
