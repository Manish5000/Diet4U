import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String? text;
  
  const Textfield({ @required this.text,  }) ;

  @override
  Widget build(BuildContext context) {
    return 
          TextFormField(
             
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFf5f5f8))),
                focusedBorder: OutlineInputBorder(
    borderSide:
    const BorderSide(color: Colors.blue, width: 1.0),
    borderRadius: BorderRadius.circular(10.0),
  ),
                fillColor: Color(0xFFf5f5f8),
                filled: true,
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                hintText: 'Enter your name',
                labelText: text,labelStyle: TextStyle(color: Colors.grey, fontSize: 14 )
              ),
            );
        
  }
}