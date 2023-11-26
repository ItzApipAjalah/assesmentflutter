import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar(
    int currentIndex, Function(int) onTap) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: onTap,
    items: [
      buildBottomNavigationBarItem(icon: Icons.home),
      buildBottomNavigationBarItem(icon: Icons.shopping_cart_outlined),
      buildBottomNavigationBarItem(icon: Icons.post_add),
    ],
    showSelectedLabels: false,
    showUnselectedLabels: false,
  );
}

BottomNavigationBarItem buildBottomNavigationBarItem({IconData? icon}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: '',
  );
}
