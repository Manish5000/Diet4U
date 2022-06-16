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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                Text('27'),
                Text('28'),
                Text('29'),
                Text('30'),
                Text('31'),
                Text('32'),
                Text('33'),                
                Text('34'),
                Text('35'),
                Text('36'),
                Text('37'),
                Text('38'),
                Text('39'),
                Text('40'),
                Text('41'),
                Text('42'),
                Text('43'),
                Text('44'),
                Text('45'),
                Text('46'),
                Text('47'),
                Text('48'),
                Text('49'),
                Text('50'),
                Text('51'),
                Text('52'),
                Text('53'),
                Text('54'),
                Text('55'),
                Text('56'),
                Text('57'),
                Text('58'),
                Text('59'),
                Text('60'),
                Text('61'),
                Text('62'),
                Text('63'),
                Text('64'),
                Text('65'),
                Text('67'),
                Text('68'),
                Text('69'),
                Text('70'),
                Text('71'),
                Text('72'),
                Text('73'),
                Text('74'),
                Text('75'),
                Text('76'),
                Text('77'),
                Text('78'),
                Text('79'),
                Text('80'),
                Text('81'),
                Text('82'),
                Text('83'),
                Text('84'),
                Text('85'),
                Text('86'),
                Text('87'),
                Text('88'),
                Text('89'),
                Text('90'),
                Text('91'),
                Text('92'),
                Text('93'),
                Text('94'),
                Text('95'),
                Text('96'),
                Text('97'),
                Text('98'),
                Text('99'),
                Text('100'),
    
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
        
      ),
    );
  }
}