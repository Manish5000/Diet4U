import 'package:diet4u/Screens/Accountsetup/weight.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AgeSelect extends StatefulWidget {
  const AgeSelect({ Key? key }) : super(key: key);

  @override
  State<AgeSelect> createState() => _AgeSelectState();
}

class _AgeSelectState extends State<AgeSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                mainheading: "How Old Are You?", 
                subheading1: 'Age in years. This will help us to personalize', 
                subheading2: 'an exercise program plan that suits you.'),
            
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
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  Weightselect()));
                 }, textcolor: Colors.white,)
              ],
            )
          ],
          
        ),
      ),
      
    );
  }
}