import 'package:flutter/material.dart';
import 'package:travel_ui/screens/detailscreen.dart';

class ListItems extends StatelessWidget {
  final String imgPath;
  final String country;
  final String place;

  const ListItems({Key key, this.imgPath, this.country, this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailScreen(
                imgPath: imgPath,
                country: country,
                place: place,
              ),
            ),
          );
        },
        child: Column(
          children: <Widget>[
            Hero(
              tag: imgPath,
              child: Container(
                height: 200.0,
                width: 170.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              country,
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).accentColor,
              
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
             place,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13.0,
                letterSpacing:0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
