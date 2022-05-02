import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Button1 extends StatefulWidget {
final String? name;
final Color? color1;
final VoidCallback? func;

Button1({@required this.name, @required this.color1, @required this.func});
  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.color1!,
        borderRadius: BorderRadius.circular(22),
        ),
      child: InkWell(
        child: Text(widget.name!,style: GoogleFonts.urbanist(fontSize: 16,color: Colors.white,)),
        onTap: widget.func ,
        ));
    
  }
}