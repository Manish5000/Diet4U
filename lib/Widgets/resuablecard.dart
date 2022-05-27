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
        padding: EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF7552FF),
              borderRadius: BorderRadius.circular(20), border: Border.all()),
          height: 130,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(
                    widget.assetimage!,
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(widget.name!,style: GoogleFonts.urbanist(fontSize: 30,fontWeight: FontWeight.bold),)
          ]),
        ),
      ),
    );
  }
}
