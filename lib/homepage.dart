import 'package:flutter/material.dart';
import 'package:readmate/pages/page1.dart';
import 'package:readmate/pages/page2.dart';
import 'package:readmate/pages/page3.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  final List<Widget> _pages = [
    Userhome(),
    UserLib(),
    UserProfile(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}



