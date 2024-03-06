import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Design2 extends StatefulWidget {
  const Design2({super.key});

  @override
  State<Design2> createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset("assets/images/photo.png"),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello, Jade",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16)),
                  Text("Ready to workout?",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18)),
                ],
              ),
              Spacer(),
              Image.asset("assets/images/bell-02.png")
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            currentIndex: index,
            unselectedItemColor: Colors.black87,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.navigation_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: ""),
            ]),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(height: 70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/heart.png",
                            height: 24,
                            width: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Heart Rate",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12)
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("81",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 18)),
                          SizedBox(
                            width: 4,
                          ),
                          Text("BPM",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 14)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  VerticalDivider(
                    color: Color(0xFFD9D9D9),
                    thickness: 3,
                    endIndent: 420,
                    indent: 1,
                    width: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.format_list_bulleted),
                          SizedBox(
                            width: 4,
                          ),
                          Text("To-Do",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("32.5",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 18)),
                          SizedBox(
                            width: 4,
                          ),
                          Text("%",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 14)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  VerticalDivider(
                    color: Color(0xFFD9D9D9),
                    thickness: 3,
                    endIndent: 420,
                    indent: 1,
                    width: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_fire_department_outlined),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Calo",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("1000",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 18)),
                          SizedBox(
                            width: 4,
                          ),
                          Text("cal",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 14)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text("Workout Programs",textAlign:TextAlign.start,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18)
            ),
            TabBar(
              tabs: [
                Tab(
                  child: Text("All Type",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                Tab(
                  child: Text("Full Body",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ),
                Tab(
                  child: Text("Upper",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                Tab(
                  child: Text("Lower",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            Container(height: 290,width: 330,
              child: TabBarView(
                children: [
                Column(
                  children: [
                    Image.asset("assets/images/plank.png",height: 145,width: 330,fit:BoxFit.fitWidth ,),
                    Image.asset("assets/images/plank2.png",height: 145,width: 330,fit:BoxFit.fitWidth),
                  ],
                ),Column(
                    children: [
                      Image.asset("assets/images/plank.png",height: 145,width: 330,fit:BoxFit.fitWidth ,),
                      Image.asset("assets/images/plank2.png",height: 145,width: 330,fit:BoxFit.fitWidth),
                    ],
                  ),Column(
                    children: [
                      Image.asset("assets/images/plank.png",height: 145,width: 330,fit:BoxFit.fitWidth ,),
                      Image.asset("assets/images/plank2.png",height: 145,width: 330,fit:BoxFit.fitWidth),
                    ],
                  ),Column(
                    children: [
                      Image.asset("assets/images/plank.png",height: 145,width: 330,fit:BoxFit.fitWidth ,),
                      Image.asset("assets/images/plank2.png",height: 145,width: 330,fit:BoxFit.fitWidth),
                    ],
                  ),

              ],),
            )
           ]
        ),
      ),
    );
  }
}
