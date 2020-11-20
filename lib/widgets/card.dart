import 'package:flutter/material.dart';
import 'package:travel_ui/screens/detailscreen.dart';
import 'package:travel_ui/widgets/starItem.dart';

class CardItem extends StatelessWidget {
  final String imgPath;
  final String place;
  final String price;
  final String country;

  const CardItem({Key key, this.imgPath, this.place, this.price, this.country});

  @override
  Widget build(BuildContext context) {
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
          height: 100.0,
          width: MediaQuery.of(context).size.width - 20.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              Hero(
                tag: imgPath,
                child: Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 3.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 5.0),
                    StarItem(),
                    Row(
                      children: <Widget>[
                        Text(
                          '$price/',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       
                        Text(
                          'Day',
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
