import 'package:flutter/material.dart';
import 'package:our_project/pages/favorites_pages.dart';
import 'package:our_project/pages/profile_page.dart';

import '../pages/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _list = [
    HomePage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Главная',
            icon: Icon(Icons.home,
            color: Colors.black,
            ),
            activeIcon: Icon(Icons.home,
            color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Избранное',
            icon: Icon(Icons.favorite,
            color: Colors.black,
            ),
            activeIcon: Icon(Icons.favorite,
            color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Профиль',
            icon: Icon(Icons.person,
            color: Colors.black,
            ),
            activeIcon: Icon(Icons.person,
            color: Colors.green,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _list.elementAt(_selectedIndex),
    );
  }
}
