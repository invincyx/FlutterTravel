import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Feather.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          buildFavorites(
              'assets/images/country/nigeria.jpg', 'Nigeria', context),
          buildFavorites('assets/images/country/france.jpg', 'France', context),
          buildFavorites('assets/images/country/china.jpg', 'China', context),
          buildFavorites(
              'assets/images/country/beninRb.jpg', 'Benin Republic', context)
        ],
      ),
    );
  }

  buildFavorites(String imgPath, String country, context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 3),
          Text(
            country,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,

              //color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
