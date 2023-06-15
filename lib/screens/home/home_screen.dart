import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yoga_app/constants/constants.dart';

import 'components/courses.dart';
import 'components/custom_app_bar.dart';
import 'components/diff_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(top: appPadding * 12),
        child: Column(
          children: [
            CustomAppBar(),
            DiffStyles(),
            Courses(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        index: selectedIndex,
        buttonBackgroundColor: primary,
        height: 60,
        color: Colors.red,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          Icon(Icons.play_arrow,
              size: 30, color: selectedIndex == 0 ? white :black),
          Icon(Icons.search,
              size: 30, color: selectedIndex == 1 ? white :black),
          Icon(Icons.home_outlined,
              size: 30, color: selectedIndex == 2 ? white :black),
          Icon(Icons.favorite_outline,
              size: 30, color: selectedIndex == 3 ? white :black),
          Icon(Icons.person_outline,
              size: 30, color: selectedIndex == 4 ? white : black),
        ],
      ),
    );
  }
}
