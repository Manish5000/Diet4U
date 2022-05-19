
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diet4u/Screens/Homescreen/Dietscreen.dart';
import 'package:diet4u/Screens/Homescreen/workoutscreen.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
   Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;
  PageController? _pageController;
final  user = FirebaseAuth.instance.currentUser;


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
      backgroundColor: Colors.white,
     appBar: AppBar(
       elevation: 0,
       leading: null,
       backgroundColor: Colors.white,
       actions: [
       CircleAvatar(
         backgroundImage: NetworkImage(user!.photoURL.toString()),
         radius: 30,
       ),
     ]),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Workoutpage(),
            Dietpage(),
            
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        child: BottomNavyBar(
          itemCornerRadius: 100,
          showElevation: true,
          backgroundColor: rightbutton,
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
              title: Text('Workout',style: GoogleFonts.urbanist(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
              icon: Icon(Icons.home,color: Colors.white,),
              activeColor: Colors.black,
              
            ),
            BottomNavyBarItem(
              title: Text('Diet',style: GoogleFonts.urbanist(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
              icon: Icon(Icons.apps,color: Colors.white,),
              activeColor: Colors.black,
              
            ),
            
          ],
        ),
      ),
    
    );
  }
}



