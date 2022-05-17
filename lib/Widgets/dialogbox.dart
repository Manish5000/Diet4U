import 'package:flutter/material.dart';

class Showdialog extends StatefulWidget {
  const Showdialog({ Key? key }) : super(key: key);

  @override
  State<Showdialog> createState() => _ShowdialogState();
}

class _ShowdialogState extends State<Showdialog> {
  @override
  Widget build(BuildContext context) {
    return           AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,

children: [
  Text('Congratulations'),
  Text('Shehzad Bihari Bheel Basti wala'),
  ElevatedButton(onPressed: (){}, child: Text('Dabao'))
],      ),
    )
        ;}  }