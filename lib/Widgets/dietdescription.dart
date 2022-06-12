import 'package:diet4u/Screens/Accountsetup/height.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Dietdescription extends StatefulWidget {
  final AssetImage? image;
  final String? description;
  final String? title;
  const Dietdescription({ @required this.description,@required this.image,@required this.title });

  @override
  State<Dietdescription> createState() => _DietdescriptionState();
}

class _DietdescriptionState extends State<Dietdescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: leftButton,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.title!,style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  height: 80,
                width: 80,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     border: Border.all(color: Colors.black,width: 2),
                     image: DecorationImage(image: widget.image!,fit: BoxFit.fill),               
                  ),            
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(widget.description!,textAlign: TextAlign.center, style: GoogleFonts.urbanist(color: Colors.black,fontSize: 16,)),
              )),

    
          ],
        ),
      ),
    );
  }
}