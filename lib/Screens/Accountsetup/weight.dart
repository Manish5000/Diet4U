import 'package:diet4u/Screens/Accountsetup/height.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weightselect extends StatefulWidget {
  const Weightselect({ Key? key }) : super(key: key);

  @override
  State<Weightselect> createState() => _WeightselectState();
}

class _WeightselectState extends State<Weightselect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Heading1(
                mainheading: "What Is Your Weight?", 
                subheading1: "Weight in kg. Don't worry, you can always", 
                subheading2: 'change it later.'),
            
              SizedBox(height: MediaQuery.of(context).size.height*0.250),
            CupertinoPicker(
            itemExtent: 30,
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
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  HeightSelect()));
                 }, textcolor: Colors.white,)
              ],
            )
          ],
          
        ),
      ),
      
    ));
  }
}