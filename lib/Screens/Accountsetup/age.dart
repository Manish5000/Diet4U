import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AgeSelect extends StatelessWidget {
  const AgeSelect({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: CupertinoPicker(itemExtent: 30,
      diameterRatio: 10,
      magnification: 3.0,
offAxisFraction: 0,
      squeeze: 0.05,
       onSelectedItemChanged: (x){}, children:[
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),
        Text('2'),

      ]),
    ));
  }
}