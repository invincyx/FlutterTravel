import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class StarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      allowHalfRating: true,
      onRated: (v) {},
      starCount: 5,
      rating: 4.5,
      size: 17.0,
      isReadOnly: true,
      color: Colors.yellow[700],
      borderColor: Colors.yellow[700],
      spacing: 0.0,
    );
  }
}
