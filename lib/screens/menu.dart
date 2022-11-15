// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/pallete.dart';
import 'package:restaurant_app/widget/clipper.dart';
import 'package:unicons/unicons.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTelu,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
        ),
      ),
      body: CustomBody(),
    );
  }

  Widget CustomBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // custom app bar
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                ),
              ),

              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: colorSiji,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // heading text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deliver to',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Tulangan, ID',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),

                        // cart button
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 65,
                            height: 35,
                            decoration: BoxDecoration(
                              color: colorLoro,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  UniconsLine.shopping_cart,
                                  color: colorSiji,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  '2',
                                  style: GoogleFonts.poppins(
                                      color: colorSiji,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // search field
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colorSijiSetengah,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(top: 10),
                          hintText: 'Search for something tasty...',
                          hintStyle: GoogleFonts.poppins(color: Colors.grey),
                          prefixIcon: Icon(
                            UniconsLine.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
