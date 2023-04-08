import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

import './home_screen.dart';
import './search_screen.dart';
import './favourite_screen.dart';
import './prize_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  static const routeName = '/nav-bar';
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  var selectedIndex = 0;
  static const List<Widget> screens = [
    SearchScreen(),
    FavouriteScreen(),
    PrizeScreen(),
  ];

  Widget buildIcon(IconData icon) {
    return Icon(
      icon,
      color: Theme.of(context).primaryColor,
      size: MediaQuery.of(context).size.height * 0.04,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            unselectedItemColor: Colors.black,
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).primaryColor),
            onTap: (value) => setState(() {
              selectedIndex = value;
            }),
            items: [
              BottomNavigationBarItem(
                icon: buildIcon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.star_rounded),
                label: 'Nutrition',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.shop_rounded),
                label: 'Tips',
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
