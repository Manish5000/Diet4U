import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseableCard extends StatefulWidget {
  const ReuseableCard(
      {Key? key,
      @required this.assetimage,
       @required this.ontap,
      @required this.name})
      : super(key: key);
  final String? assetimage;
  final String? name;
  final Function()? ontap;
  
  @override
  State<ReuseableCard> createState() => _ReuseableCardState();
}

class _ReuseableCardState extends State<ReuseableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFf0ecff),
              borderRadius: BorderRadius.circular(30), border: Border.all(color: Color(0xFFf0ecff),width: 0)),
          height: MediaQuery.of(context).size.height*0.140,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left:0),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.assetimage!,
                  ),
                  width: MediaQuery.of(context).size.width*0.270,
                  height: MediaQuery.of(context).size.height*0.200,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(widget.name!,style: GoogleFonts.urbanist(fontSize: 20,fontWeight: FontWeight.bold,),)
          ]),
        ),
      ),
    );
  }
}
