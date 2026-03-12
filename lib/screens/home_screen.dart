import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:nav_bars/screens/main_screen.dart';
import 'package:nav_bars/screens/profile_screen.dart';
import 'package:nav_bars/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [Icons.person_outline, Icons.home, Icons.settings],
        activeIndex: currentPageIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (int index) {
          setState(() => currentPageIndex = index);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
      ),

      appBar: AppBar(title: Text('HomeScreen')),

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: const <Widget>[
          ProfileScreen(),
          MainScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}
