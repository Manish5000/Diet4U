
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Dietscreen.dart';
import 'package:diet4u/Screens/Homescreen/Diet/dietscreen2.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workout2.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workoutscreen.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/profiledialog.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen2 extends StatefulWidget {
  const Homescreen2({Key? key}) : super(key: key);

  

  @override
  State<Homescreen2> createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {
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
    
    return
     Scaffold(
      
      backgroundColor: Colors.white,
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(70),
       child: AppBar(
         leading: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20,top: 20),
               child: Image.asset('assets/logo2.png',height: 35,),
             ),
           ],
         ),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         elevation: 0,
        //  leading: ,
         backgroundColor: Colors.white,
         actions: [
           
         GestureDetector(
           onTap: (){
              showDialog(context: context, builder: (builder){
                     return  Profiledialog();
           });},
           child: Padding(
             padding: EdgeInsets.only(top: 15,right: 15),
             child: Row(
               children: [
                 CircleAvatar(
                        
                  backgroundColor: Colors.white,
                   radius: 20,
                 ),
               ],
             ),
           ),
         ),
       ]),
     ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Workoutpage2(),
            Dietpage2(),
            
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



