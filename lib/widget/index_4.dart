// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use
// ignore_for_file: unused_local_variable
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/pallete.dart';
import 'package:restaurant_app/widget/recommended.dart';
import 'package:unicons/unicons.dart';

class IndexEmpat extends StatelessWidget {
  const IndexEmpat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorSiji,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // back button
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: colorTelu,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ),
      
                    // cart button
                    Container(
                      alignment: Alignment.center,
                      width: 65,
                      height: 35,
                      decoration: BoxDecoration(
                        color: colorLoro,
                        borderRadius: BorderRadiusDirectional.circular(10),
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
                            '9',
                            style: GoogleFonts.poppins(
                              color: colorSiji,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      
            // main image content
            SizedBox(
              height: size.height * 0.42,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: colorTelu,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    '${gridContentRecommended.elementAt(3)['images']}',
                  ),
                ),
              ),
            ),
      
            // sub content
            SizedBox(
              height: size.height * 0.43,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Text(
                        "${gridContentRecommended.elementAt(3)["subjudul"]}",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "${gridContentRecommended.elementAt(3)["harga"]}",
                        style: GoogleFonts.poppins(
                          color: Colors.deepOrange,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
      
                    // category
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: 105,
                              decoration: BoxDecoration(
                                color: colorTelu,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_drink_sharp,
                                    color: Colors.brown,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Coffe',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: 145,
                              decoration: BoxDecoration(
                                color: colorTelu,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.fire,
                                    color: Colors.deepOrange,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Few Sugar',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
      
                    // choose size
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        "Choose cup size glass",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: SizedBox(
                        height: 35,
                        width: size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: colorLoro,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Short',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: colorLoro,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Tall',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: colorLoro,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Grande',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: colorLoro,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Venti',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: colorLoro,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Trenta',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
      
                    // checkout button
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: size.width * 0.34,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '-',
                                    style: GoogleFonts.averiaSerifLibre(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.averiaSerifLibre(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '+',
                                    style: GoogleFonts.averiaSerifLibre(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Container(
                            height: 50,
                            width: size.width * 0.53,
                            decoration: BoxDecoration(
                                color: colorSiji,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Add to Cart',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '${gridContentRecommended.elementAt(3)['harga']}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
