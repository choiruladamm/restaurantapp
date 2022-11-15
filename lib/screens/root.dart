// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:restaurant_app/pallete.dart';
import 'package:restaurant_app/screens/like.dart';
import 'package:restaurant_app/screens/menu.dart';
import 'package:restaurant_app/screens/shop.dart';
import 'package:restaurant_app/screens/user.dart';
import 'package:unicons/unicons.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreen();
}

class _RootScreen extends State<RootScreen> {
  final pageNav = [
    MenuScreen(),
    ShopScreen(),
    LikeScreen(),
    UserProfileScreen(),
  ];

  int selectedIndex = 0;

  void ontabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: colorSiji,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            color: Colors.white,
            backgroundColor: colorSiji,
            activeColor: colorSiji,
            tabBackgroundColor: colorLoro,
            gap: 8,
            padding: EdgeInsets.all(8),
            tabMargin: EdgeInsets.only(right: 10, left: 10),
            textStyle: GoogleFonts.poppins(),
            tabs: const [
              GButton(
                icon: UniconsLine.estate,
                text: 'Home',
                // style: GoogleFonts.poppins(),
              ),
              GButton(
                icon: UniconsLine.comment_lines,
                text: 'Chat',
              ),
              GButton(
                icon: UniconsLine.heart,
                text: 'Favorit',
              ),
              GButton(
                icon: UniconsLine.user,
                text: 'User',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: ontabChange,
          ),
        ),
      ),
      body: pageNav.elementAt(selectedIndex),
    );
  }
}
