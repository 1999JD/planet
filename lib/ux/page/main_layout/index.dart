import 'package:flutter/material.dart';
import 'package:planet/route/main_layout_widget.dart';
import 'package:planet/ux/widget/main_layout/bottom_navigation.dart';

class MainLayout extends StatefulWidget {
  final String setupPageRoute;
  const MainLayout({
    super.key,
    required this.setupPageRoute,
  });

  @override
  MainLayoutState createState() => MainLayoutState();
}

class MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MainLayoutWidget.generateWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
