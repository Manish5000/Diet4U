import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  final String? text;
  final IconData? prefixicon;
  final Widget? suffixicon;
  bool? Obscuretext;
  final bool? isPassword;
  Textfield({ @required this.text,this.prefixicon,this.suffixicon,this.Obscuretext,required this.isPassword}) ;

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return widget.isPassword == true? 
          TextFormField(
             obscureText: widget.Obscuretext! ,
              decoration: InputDecoration(
                prefixIcon: Icon(widget.prefixicon),
                suffixIcon: IconButton(
                   icon: widget.suffixicon!,
                   onPressed: (){
                      setState(() {
                            widget.Obscuretext = !widget.Obscuretext!;
                 
                      });
                   },
                    ),
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
                
                labelText: widget.text,labelStyle: TextStyle(color: Colors.grey, fontSize: 14 ),
                
              ),
            ) : TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(widget.prefixicon),
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
                
                labelText: widget.text,labelStyle: TextStyle(color: Colors.grey, fontSize: 14 ),
                
              ),
            );
        
  }
}