import 'package:flutter/material.dart';

class StarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 15,
        ),
        Icon(
          Icons.star_border,
          color: Colors.orange,
          size: 15,
        ),
      ],
    );
  }
}
