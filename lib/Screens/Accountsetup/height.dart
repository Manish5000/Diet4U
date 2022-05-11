import 'package:diet4u/Screens/Accountsetup/goal.dart';
import 'package:diet4u/Screens/Accountsetup/weight.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HeightSelect extends StatefulWidget {
  const HeightSelect({ Key? key }) : super(key: key);

  @override
  State<HeightSelect> createState() => _HeightSelectState();
}

class _HeightSelectState extends State<HeightSelect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Heading1(
                mainheading: "What is Your Height?", 
                subheading1: "Height in cm. Don't worry, you can always", 
                subheading2: 'change it later.'),
            
              SizedBox(height: MediaQuery.of(context).size.height*0.250),
            CupertinoPicker(itemExtent: 30,
            diameterRatio: 10,
            magnification: 3.0,
offAxisFraction: 0,
            squeeze: 0.05,
             onSelectedItemChanged: (x){}, children:[
              Text('11'),
              Text('12'),
              Text('13'),
              Text('14'),
              Text('15'),
              Text('16'),
              Text('17'),
              Text('18'),
              Text('19'),
              Text('20'),
              Text('21'),
              Text('22'),
              Text('23'),
              Text('24'),
              Text('25'),
              Text('26'),

            ]),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button2(name: 'Back', buttoncolor: leftButton, func: (){Navigator.pop(context);}, textcolor: Color(0xFF7552FF)),
                SizedBox(width: 20,),
                 Button2(name: 'Continue', buttoncolor: rightbutton, func: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  Selectgoal()));
                 }, textcolor: Colors.white,)
              ],
            )
          ],
          
        ),
      ),
      
    ));
  }
}