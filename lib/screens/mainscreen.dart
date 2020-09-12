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
        // ignore: deprecated_member_use
        unselectedItemColor: Theme.of(context).textTheme.title.color,
        elevation: 3.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 25,
            ),
            title: Text(
              "Location",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.heart,
              size: 20,
            ),
            title: Text(
              "Favorite",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 20,
            ),
            title: Text(
              "Trips",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            title: Text(
              "Profiles",
            ),
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
