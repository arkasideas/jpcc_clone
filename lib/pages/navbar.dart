import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/community/community.dart';
import 'package:jpcc_clone/pages/giving/giving_page.dart';
import 'package:jpcc_clone/pages/ministry/ministry_page.dart';
import 'package:jpcc_clone/pages/resource/resource_page.dart';
import 'package:solar_icons/solar_icons.dart';
import '../pages/home/home_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    HomePage(),
    CommunityPage(),
    MinistryPage(),
    GivingPage(),
    ResourcePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.black,),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF8AC33E),
        unselectedItemColor: Colors.grey[500],
        selectedLabelStyle: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0 ? Icon(SolarIconsBold.home) : Icon(SolarIconsOutline.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1 ? Icon(SolarIconsBold.usersGroupRounded) : Icon(SolarIconsOutline.usersGroupRounded),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2 ? Icon(SolarIconsBold.hospital) : Icon(SolarIconsOutline.hospital),
            label: 'Ministry',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ? Icon(SolarIconsBold.handMoney) : Icon(SolarIconsOutline.handMoney),
            label: 'Giving',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4 ? Icon(SolarIconsBold.play) : Icon(SolarIconsOutline.play),
            label: 'Resources',
          ),
        ],
      ),
    );
  }
}
