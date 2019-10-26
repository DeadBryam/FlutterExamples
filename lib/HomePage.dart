import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  final _pages = <Widget>[
    page("1t"),
    page("2t"),
    page("3t"),
    page("4t"),
    page("5t"),
  ];

  final _tabs = <TitledNavigationBarItem>[
    TitledNavigationBarItem(title: 'Home', icon: Icons.home),
    TitledNavigationBarItem(title: 'Search', icon: Icons.search),
    TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
    TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
    TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    assert(_pages.length == _tabs.length);
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: TitledBottomNavigationBar(
        items: _tabs,
        currentIndex: _currentPage,
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }

  static Widget page(String text) {
    return Center(child: Text(text));
  }
}
