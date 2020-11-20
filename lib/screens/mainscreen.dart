import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_ui/pages/favorite.dart';
import 'package:travel_ui/pages/location.dart';
import 'package:travel_ui/pages/profile.dart';
import 'package:travel_ui/pages/trips.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Feather.menu,
          size: 20.0,
        ),
        actions: [
          IconButton(
            icon: Icon(Feather.settings),
            onPressed: () {},
          )
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          Location(),
          Favorites(),
          Trips(),
          Profiles(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Theme.of(context).textTheme.headline6.color,
        elevation: 3.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bookmark,
              size: 30,
            ),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              size: 30,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
              size: 30,
            ),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              size: 30,
            ),
            label: "Profile",
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
