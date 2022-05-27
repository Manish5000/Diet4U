import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';

class Intermediate extends StatefulWidget {
  const Intermediate({ Key? key }) : super(key: key);

  @override
  State<Intermediate> createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (itemBuilder, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.200,
            width: MediaQuery.of(context).size.width,
            child: Workoutcard(),
          );
        });
  }
}