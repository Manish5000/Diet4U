import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/dialogbox.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Createpass extends StatefulWidget {
  const Createpass({ Key? key }) : super(key: key);

  @override
  State<Createpass> createState() => _CreatepassState();
}

class _CreatepassState extends State<Createpass> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: Text('Link sent sucessfully',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),   
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/createpass.json'),
            SizedBox(height: MediaQuery.of(context).size.height*0.020,),
            Text('Kindly check your e-mail for password reset link ',textAlign: TextAlign.center,style: GoogleFonts.urbanist(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
            SizedBox(height: MediaQuery.of(context).size.height*0.050,),
           
                Spacer(),
                Button1(name: 'Continue', color1: rightbutton, func: (){
                 showDialog(context: context, builder: (builder){
                   return Showdialog();
                 });
    }
                ),               
          ],
        ),
      ), 
        
    );
    
  }
  
}



