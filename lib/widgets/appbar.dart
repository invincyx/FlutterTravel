import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

AppBar header(context){
  return AppBar(
    title: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Feather.search,
                  color: Colors.black,
                ),
              ),
              Flexible(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search for a trip',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Feather.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}