import 'package:diet4u/Screens/ForgotAndResetPass/createpass.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({Key? key}) : super(key: key);

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController? emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Forgot Password',
          style: GoogleFonts.urbanist(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.asset('assets/otp.json', height: 250),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.100,
            ),
            Center(
              child: Text(
                'Enter your E-mail to reset password',
                style: GoogleFonts.urbanist(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.070,
            ),
            TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Color(0xFF7552FF))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  
                  color: Color(0xFF7552FF))),
                    hintText: 'Email', prefixIcon: Icon(Icons.mail)),
                controller: emailcontroller,
                onSaved: (value) {
                  emailcontroller!.text = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('please enter your e-mail');
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return ("Please Enter a valid email ");
                  }
                  // ignore: null_check_always_fails
                  return null;
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.070,
            ),
            // Text('Resend code in 59 sec',
            //     style: GoogleFonts.urbanist(
            //       color: Colors.black),),
            Spacer(),
            Button1(
                name: 'Send reset link',
                color1: rightbutton,
                func: () {
                  _firebaseAuth.sendPasswordResetEmail(email: emailcontroller!.text).
                  then((value) =>  Navigator.push(context, MaterialPageRoute(builder: ((context) => Createpass()))));
                })
          ],
        ),
      ),
    );
  }
}
