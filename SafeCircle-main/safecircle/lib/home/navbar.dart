import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';
import 'package:safecircle/home/home.dart';
import 'package:safecircle/settings/settings.dart';
import 'package:safecircle/store/store.dart';
import 'package:safecircle/user/user.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static const routeName = '/';
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

   final  List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const MemberSelectionPage(),
    CommerceScreen(),
    const SettingsPage()
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.family_restroom_rounded),
            label: 'Family',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: kAsh,
        selectedItemColor: kBlack,
        onTap: _onItemTapped,
      ),
    );
  }
}