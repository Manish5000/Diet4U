import 'package:diet4u/Screens/ForgotAndResetPass/createpass.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({ Key? key }) : super(key: key);

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       backgroundColor: Colors.white,
      appBar: AppBar(
        
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text('Forgot Password',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.asset('assets/otp.json',height: 250),
            SizedBox(height: MediaQuery.of(context).size.height*0.100,),
            Center(
              child:
              
               Text('Code has been send to +918094705928',
                style: GoogleFonts.urbanist(
                  color: Colors.black),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.070,),
            OTPTextField(
              otpFieldStyle: OtpFieldStyle(enabledBorderColor: rightbutton),
              length: 4,
  width: MediaQuery.of(context).size.width,
  fieldWidth: 80,
  style: TextStyle(
    
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20
  ),
  textFieldAlignment: MainAxisAlignment.spaceAround,
  fieldStyle: FieldStyle.box,
  onCompleted: (pin) {
    print("Completed: " + pin);
  },
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.070,),
            Text('Resend code in 59 sec',
                style: GoogleFonts.urbanist(
                  color: Colors.black),),
                  Spacer(),
                  Button1(name: 'Verify', color1: rightbutton, func: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Createpass())));
                  })
          ],
        ),
      ),
    );
  }
}