
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diet4u/Screens/Homescreen/Dietscreen.dart';
import 'package:diet4u/Screens/Homescreen/workoutscreen.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Dietpage(),
            Workoutpage(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
        child: BottomNavyBar(
          itemCornerRadius: 80,
          showElevation: true,
          backgroundColor: Colors.white,
          containerHeight: 65,
          iconSize: 30,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          curve: Curves.easeOut,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController!.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              title: Text('Workout',style: GoogleFonts.urbanist(fontSize: 15,color: Color(0xFF7552FF),fontWeight: FontWeight.bold)),
              icon: Icon(Icons.home,color: Color(0xFF7552FF),),
              activeColor: rightbutton,
            ),
            BottomNavyBarItem(
              title: Text('Diet',style: GoogleFonts.urbanist(fontSize: 15,color: Color(0xFF7552FF),fontWeight: FontWeight.bold)),
              icon: Icon(Icons.apps,color: Color(0xFF7552FF),),
              activeColor: rightbutton,
            ),
            
          ],
        ),
      ),
    
    );
  }
}



