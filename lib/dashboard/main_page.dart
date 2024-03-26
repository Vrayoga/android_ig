import 'package:flutter/material.dart';
import 'package:ui_ig/dashboard/dashboard.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Dashboard(),
    const Center(
      child: Text(
        'home',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'search',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'reels',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'shop',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'account',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.tealAccent,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? Icons.search : Icons.search_outlined),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? Icons.video_call
                  : Icons.video_call_outlined),
              label: 'reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? Icons.shop_outlined
                  : Icons.shop_outlined),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? Icons.person_outline
                  : Icons.person_outline),
              label: 'account',
            ),
          ]),
    );
  }
}
