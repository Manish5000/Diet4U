import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:diet4u/Screens/Homescreen/Workout/Workoutlevel/advnaced.dart';
import 'package:diet4u/Screens/Homescreen/Workout/Workoutlevel/beginner.dart';
import 'package:diet4u/Screens/Homescreen/Workout/Workoutlevel/intermediate.dart';
import 'package:diet4u/Screens/Homescreen/Workout/Workouttype.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/stretching.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/weightlifting.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/yoga.dart';
import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Workoutpage2 extends StatefulWidget {
  final int? currentindex;
  final PageController? pageController;
  const Workoutpage2({this.currentindex, this.pageController});

  @override
  State<Workoutpage2> createState() => _Workoutpage2State();
}

enum Activity {
  Beginner,
  Intermediate,
  Advanced,
}

class _Workoutpage2State extends State<Workoutpage2> {
  final user = FirebaseAuth.instance.currentUser;

  PageController? _pageController;
  Color inactivecolor = Colors.white;
  Color activecolor = Color(0xFF7552FF);
  Activity? SelectActivity;
  int _currentIndex = 0;

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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Heading2(text: 'Hello, '),
                    // Text(user!.displayName.toString(),
                    //     style: GoogleFonts.urbanist(
                    //         fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Featured Workout',
                      style: GoogleFonts.urbanist(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: Text('See All',
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: rightbutton))),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Workoutcard(text: 'Body Stretching',image: AssetImage('assets/stretching1.jpg'),func: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context) =>  Stretching()));
                    }),
                    SizedBox(
                      width: 15,
                    ),
                    Workoutcard(text: 'Weight Lifting',image: AssetImage('assets/weightlifting1.jpg'),func: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Weightlifting()));
                    }),
                    SizedBox(
                      width: 15,
                    ),
                    Workoutcard(text: 'Yoga',image: AssetImage('assets/yoga1.jpg'),func: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  Yoga()));
                    },),
                    SizedBox(
                      width: 15,
                    ),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Workout Level',
                            style: GoogleFonts.urbanist(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>  WorkoutData()));
                            },
                            child: Text('See All',
                                style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    color: rightbutton,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectActivity = Activity.Beginner;
                                 
                           
                            });
                            _pageController!.jumpToPage(0);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.050,
                            width: MediaQuery.of(context).size.width * 0.270,
                            decoration: BoxDecoration(
                              border: Border.all(color: rightbutton, width: 2),
                              color: SelectActivity == Activity.Beginner
                                  ? activecolor
                                  : inactivecolor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Beginner",
                                    style: GoogleFonts.urbanist(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectActivity = Activity.Intermediate;
                             
                            });
                             _pageController!.jumpToPage(1);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.050,
                            width: MediaQuery.of(context).size.width * 0.270,
                            decoration: BoxDecoration(
                              border: Border.all(color: rightbutton, width: 2),
                              color: SelectActivity == Activity.Intermediate
                                  ? activecolor
                                  : inactivecolor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Intermediate",
                                    style: GoogleFonts.urbanist(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectActivity = Activity.Advanced;
                            
                            });
                            _pageController!.jumpToPage(2);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.050,
                            width: MediaQuery.of(context).size.width * 0.270,
                            decoration: BoxDecoration(
                              border: Border.all(color: rightbutton, width: 2),
                              color: SelectActivity == Activity.Advanced
                                  ? activecolor
                                  : inactivecolor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Advanced",
                                    style: GoogleFonts.urbanist(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              
                             

                             
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                   Container(
                     height: 300,
                     width: MediaQuery.of(context).size.width,
                     child: PageView(
                     
                     controller: _pageController,
                     children: [
                       Beginner(),                       
                       Intermediate(),
                       Advanced()
                     ],
                   )) 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
