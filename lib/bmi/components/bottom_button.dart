import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BottomButton extends StatefulWidget {
   BottomButton({@required this.onTap, @required this.buttonTitle,this.color1});

  final Function() ? onTap;
  final String? buttonTitle;
  final Color? color1;

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          elevation: 5,
          primary: widget.color1!,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(MediaQuery.of(context).size.width, 47,),

        ),
        
        
        child: InkWell(
          child: Text(widget.buttonTitle!,style: GoogleFonts.urbanist(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600)),
          
          )),
    );
  }
}
