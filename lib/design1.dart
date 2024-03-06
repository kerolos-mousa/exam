import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class design1 extends StatefulWidget {
   const design1({super.key});

  @override
  State<design1> createState() => _design1State();
}

class _design1State extends State<design1> {
 int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset("assets/images/bell-02.png"),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index, unselectedItemColor: Colors.black87,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, ), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.window_rounded),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: ""),
      ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hello, ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff371B34),
                      fontSize: 20),
                ),
                Text(
                  "Sara Rose",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff371B34),
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(height: 5),
            Text(
              "How are you feeling today ?",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff371B34),
                  fontSize: 16),
            ),
            Row(
              children: [
                Expanded(child: Image.asset("assets/images/love.png")),
                Expanded(child: Image.asset("assets/images/cool.png")),
                Expanded(child: Image.asset("assets/images/happy.png")),
                Expanded(child: Image.asset("assets/images/sad.png")),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                Expanded(
                  child: Text(
                    "Love",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "Cool",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: Text(
                    "Happy",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Sad",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  " Feature",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Spacer(),
                InkWell(
                  child: Text(
                    " see more > ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Positive vibes ",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff344054),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        """ Boost your mood with 
 positive vibes """,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10 mins",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/images/walkingthedog.png")
                ],
              ),
            ) ,
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  " Exercise",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Spacer(),
                InkWell(
                  child: Text(
                    " see more > ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(children: [
              InkWell( onTap: () {},    child: Image.asset("assets/images/relaxation.png")),
              InkWell(  onTap: () {}, child: Image.asset("assets/images/meditation.png")),
            ],),
            Row(children: [
              InkWell(  onTap: () {},child: Image.asset("assets/images/beathing.png")),
              InkWell(onTap: () {},child: Image.asset("assets/images/yoga.png")),
            ],)
          ],
        ),
      ),
    );
  }
}
