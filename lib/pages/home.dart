import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lokmart/main.dart';
import 'package:lokmart/widget/theme.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 61.0, left: 30),
            child: Row(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Brayden',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Good morning.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 88.0),
                  child: Image.asset(
                    'assets/ic_notification.png',
                    width: 35,
                    height: 37,
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/img_profil.png',
                  width: 45,
                  height: 47,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Container(
                  width: 275,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 234, 234, 234),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            color: Colors.grey,
                            Icons.search,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Container(
                  width: 65,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 234, 234, 234),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1.0, left: 7),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                              color: Colors.grey, Icons.filter_alt_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_banner2.png'),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_banner1.png'),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_banner3.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                'Show all',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: Color(0xffFA662E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset('assets/ic_right.png'),
            ],
          )
        ],
      ),
    );
  }
}
