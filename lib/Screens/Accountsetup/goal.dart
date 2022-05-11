import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:flutter/material.dart';
class Selectgoal extends StatefulWidget {
  const Selectgoal({ Key? key }) : super(key: key);

  @override
  State<Selectgoal> createState() => _SelectgoalState();
}

class _SelectgoalState extends State<Selectgoal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Heading1(
                mainheading: 'What is Your Goal', 
                subheading1: "You can choose more than one. Don't worry,", 
                subheading2: "you can always change it later."
                ),
                Spacer(),
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button2(name: 'Back', buttoncolor: leftButton, func: (){Navigator.pop(context);}, textcolor: Color(0xFF7552FF)),
                SizedBox(width: 20,),
                 Button2(name: 'Continue', buttoncolor: rightbutton, func: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  FillProfile()));
                 }, textcolor: Colors.white,)
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}