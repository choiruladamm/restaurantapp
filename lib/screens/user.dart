// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/pallete.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'User Profile',
        style: GoogleFonts.poppins(
          fontSize: 33,
          color: colorSiji,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
