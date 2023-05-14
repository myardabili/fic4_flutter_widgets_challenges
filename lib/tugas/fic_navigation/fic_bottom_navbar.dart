import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FICBottomNavbar extends StatefulWidget {
  const FICBottomNavbar({super.key});

  @override
  State<FICBottomNavbar> createState() => _FICBottomNavbarState();
}

class _FICBottomNavbarState extends State<FICBottomNavbar> {
  final List<Widget> list = const [
    Text("Home"),
    Text("Cart"),
    Text("Favorite"),
    Text("User"),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/profile.svg',
      'label': 'Home',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Navbar"),
        centerTitle: true,
      ),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(14),
              ),
              child: SvgPicture.asset(
                i['icon'],
                color: Colors.white,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'],
              color: Colors.grey,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
