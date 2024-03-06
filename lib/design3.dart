import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Design3 extends StatefulWidget {
  const Design3({super.key});

  @override
  State<Design3> createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  int index = 0;
  List<String> choicesList = ["Discover", "News", "Most Viewed", "Saved"];
  int defaultChoiceIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/flower.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "AliceCare",
                style: GoogleFonts.milonga(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFF6941C6),
        unselectedItemColor: Color(0xFF667085),
        iconSize: 18,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "Today"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Insights"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  hintText: "Articles, Video, Audio and More,.....",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF667085))),
            ),
            SizedBox(height:10),
            Wrap(
              spacing: 1,
              children: choicesList.map((choice) {
                int index = choicesList.indexOf(choice);
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999)),
                    padding: EdgeInsets.only(right: 5, left: 5),
                    labelPadding: EdgeInsets.all(2.0),
                    label: Text(
                      choicesList[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Color(0xFF667085), fontSize: 16),
                    ),
                    selected: defaultChoiceIndex == index,
                    selectedColor: Color(0xFFD6BBFB),
                    showCheckmark: false,
                    backgroundColor: Color(0xFFE4E7EC),
                    side: BorderSide.none,
                    onSelected: (value) {
                      setState(() {});
                    },
                  ),
                );
              }).toList(),
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot topics",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  width: 150,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "see more >",
                    style: TextStyle(
                        color: Color(0xFF5925DC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Container(
              height: 130,width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2,autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  Container(
                    child: Image.asset("assets/images/pic1.png",),
                  ),
                  Container(
                    child: Image.asset("assets/images/pic2.png"),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get Tips",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            Container(width: double.infinity,
              padding: EdgeInsets.only(right: 5,left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF2F4F7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/doctor.png",
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Connect with doctors & \n get suggestions",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Connect now and get \n expert insights ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF7F56D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          onPressed: () {},
                          child: Text(
                            "View detail",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cycle Phases and Period",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "see more >",
                    style: TextStyle(
                        color: Color(0xFF5925DC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
