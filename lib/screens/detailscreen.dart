import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/starItem.dart';

class DetailScreen extends StatefulWidget {
  final imgPath;
  final country;
  final place;
  final price;

  DetailScreen({Key key, this.imgPath, this.country, this.place, this.price});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace, size: 30.0),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Icon(
                  CupertinoIcons.bell,
                  size: 30.0,
                ),
                Positioned(
                  top: 8.0,
                  right: 3.0,
                  child: Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Hero(
              tag: widget.imgPath,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(widget.imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 5.0, right: 5.0, bottom: 5.0),
            child: Row(
              children: <Widget>[
                Text(
                  widget.country,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                Spacer(),
                StarItem(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.place,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit. In a lorem tellus.ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus  ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus curpis eget, fermentum est. Morbi in diam eget tellus ullamcorper pretium Lorem ipsum dolor sit. In a lorem tellus. curpis eget, fermentum est. Morbi in diam eget tellus ullamcorper pretium a vitae risus. ',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                buildPrice(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.flight,
          size: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }

  buildPrice() {
    if (widget.price != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('${widget.price} / Night',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.black)),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
