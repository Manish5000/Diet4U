import 'package:diet4u/Widgets/button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AgeSelect extends StatelessWidget {
  const AgeSelect({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('How Old Are You?',style: GoogleFonts.urbanist(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(height: 20,),
            Text('Age in years. This will help us to personalize',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('an exercise program plan that suits you.',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
              ],
            ),
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
          SizedBox(height: MediaQuery.of(context).size.height*0.300,),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button2(name: 'Back', c1: Color(0xFFC4C4C4), func: (){Navigator.pop(context);}, c2: Color(0xFF7552FF)),
              SizedBox(width: 20,),
               Button2(name: 'Continue', c1: Color(0xFF7552FF), func: (){}, c2: Colors.white,)
            ],
          )
        ],
        
      ),
      
    ));
  }
}