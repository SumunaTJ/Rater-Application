import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rater/models/movie.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


import '../../../constants.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 40% of our total height
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movie.backdrop),
              ),
            ),
          ),
          // Rating Box
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              // it will cover 90% of our total width
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          onRatingUpdate: (rating){
                          print(rating);
                          },
                        ),
                        // SvgPicture.asset("assets/icons/star_fill.svg"),
                        // SizedBox(height: kDefaultPadding / 4),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "${movie.rating}/",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              TextSpan(text: "10\n"),
                              TextSpan(
                                text: "${movie.numOfRatings}",
                                style: TextStyle(color: kTextLightColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Rate this
                    // Metascore
                  ],
                ),
              ),
            ),
          ),
          // Back Button
          //SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
// class Rating extends StatefulWidget{
//   final int maximumRating = 5;
//   _Rating createState()=> _Rating();
// }
//
// class _Rating extends State<Rating>{
//   int _currentRating = 0;
//   Color _iconColor = Colors.white;
//   Widget build(BuildContext){
//     return ListTile(
//       leading: new IconButton(
//           icon: Icon(Icons.star, color: _iconColor),
//           onPressed: () {
//             setState(() {
//               _iconColor = Colors.yellow;
//             });
//           }),
//     );
//   }
// }