import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Button2 extends StatefulWidget {
final String? name;
final Color? buttoncolor;
final Color? textcolor;
final VoidCallback? func;

Button2({@required this.name, @required this.buttoncolor, @required this.func,required this.textcolor});
  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.func ,
      child: ElevatedButton(
        onPressed: widget.func,
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          elevation: 5,
          primary: widget.buttoncolor!,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          fixedSize: Size(150, 45,),
        ),
        child: InkWell(
          child: Text(widget.name!,style: GoogleFonts.urbanist(fontSize: 14,color: widget.textcolor,fontWeight: FontWeight.w600)),
          
          )),
    );
    
  }
}