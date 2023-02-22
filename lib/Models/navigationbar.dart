import 'package:flutter/material.dart';

import '../Screens/Catagories.dart';
import '../Screens/Dashboard.dart';
import '../Screens/Shorts.dart';
import '../Screens/settings.dart';

class NavigationBa extends StatefulWidget {
  const NavigationBa({super.key});

  @override
  State<NavigationBa> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBa> {
  int _selectedindex = 0;
  // ignore: prefer_final_fields
  List<Widget> _list = <Widget>[
    const Dashboard(),
    const Catagories(),
    const setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_selectedindex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 0, blurRadius: 10)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.deepPurpleAccent,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.headphones),
                label: "Listen",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              )
            ],
            currentIndex: _selectedindex,
            onTap: ((index) => _ontap(index)),
          ),
        ),
      ),
    );
  }

  void _ontap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }
}
