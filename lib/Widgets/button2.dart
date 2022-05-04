import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Button2 extends StatefulWidget {
final String? name;
final Color? c1;
final Color? c2;
final VoidCallback? func;

Button2({@required this.name, @required this.c1, @required this.func,required this.c2});
  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.func ,
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 150,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.c1!,
          borderRadius: BorderRadius.circular(22),
          ),
        child: InkWell(
          child: Text(widget.name!,style: GoogleFonts.urbanist(fontSize: 14,color: widget.c2,fontWeight: FontWeight.bold)),
          
          )),
    );
    
  }
}