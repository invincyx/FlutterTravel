import 'package:flutter/material.dart';
import 'package:travel_ui/screens/detailscreen.dart';
import 'package:travel_ui/widgets/appbar.dart';
import 'package:travel_ui/widgets/starItem.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 10,
              top: 10,
              bottom: 10.0,
            ),
            child: Text(
              'Where are you\ngoing ?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          children: <Widget>[
                            buildListItems('assets/images/country/Greece.jpg',
                                'Greece', 'Crete Anthens Greece', context),
                            buildListItems('assets/images/country/Dubai.jpg',
                                'Dubai', 'Marina Sheikh', context),
                            buildListItems('assets/images/country/italy.jpg',
                                'Italy', 'Venice Gondola Cruise', context),
                            buildListItems('assets/images/country/bahamas.jpg',
                                'Bahamas', 'Paradise Island bahamas', context),
                            buildListItems('assets/images/country/france.jpg',
                                'France', 'Sofitel Hotel', context),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'All Trips',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'More',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      buildCard(
                          'assets/images/country/china.jpg',
                          'Harbin Snow and Ice',
                          '€4750 ',
                          'China',
                          'Day',
                          context),
                      buildCard(
                          'assets/images/country/nigeria.jpg',
                          'Victoria Island Lagos',
                          '€2000 ',
                          'Nigeria',
                          'Day',
                          context),
                      buildCard(
                          'assets/images/country/beninRb.jpg',
                          'L\'hotel Marina, Cotonou',
                          '€475 ',
                          'Benin Republic ',
                          'Day',
                          context),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildListItems(String imgPath, String country, String place, context) {
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
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 2),
            Text(
              country,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildCard(String imgPath, String place, String price, String country,
      String days, context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailScreen(
                place: place,
                country: country,
                price: price,
                imgPath: imgPath,
              ),
            ),
          );
        },
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: <Widget>[
              Hero(
                tag: imgPath,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 3),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      country,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      place,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 3),
                    StarItem(),
                    Row(
                      children: <Widget>[
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '/',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          days,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
