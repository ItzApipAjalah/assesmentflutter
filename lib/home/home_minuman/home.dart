import 'package:flutter/material.dart';
import 'package:starbhak/home/home_minuman/home_minuman.dart';
import 'package:starbhak/cart.dart';
import 'package:starbhak/home/nav.dart';

void main() {
  runApp(MaterialApp(home: HomeMinum()));
}

class HomeMinum extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeMinum> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeMinuman(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? buildAppBar() : null,
      body: _pages[_currentIndex],
      bottomNavigationBar: _currentIndex == 0
          ? buildBottomNavigationBar(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            })
          : null,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Home Screen'),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.person, color: Colors.black),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
}
