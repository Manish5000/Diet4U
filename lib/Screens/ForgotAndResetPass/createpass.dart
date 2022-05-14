import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
            Lottie.asset('assets/createpass.json'),
            Text('Create Your New Password',style: GoogleFonts.urbanist(color: Colors.black,),),
            SizedBox(height: MediaQuery.of(context).size.height*0.050,),
            Textfield(
                
                text: 'Email',
              prefixicon: Icons.mail,
              keyboardtype: TextInputType.emailAddress,
              textinputaction: TextInputAction.next,
              isPassword: false,
              controllerr: emailcontroller,
                  onsaved: (value){
                    emailcontroller.text = value!;
                  },
                  validatorr: (value){
                    if (value!.isEmpty) {
                      return('Email is required for login');
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                      return("Please Enter a valid email ");
                    }
                    // ignore: null_check_always_fails
                    return null!;
                  },),
                  SizedBox(height: 15,),
                   Textfield(
              textinputaction: TextInputAction.done,
              text: 'Password',
              prefixicon: Icons.lock,
              suffixicon: Icon(Icons.remove_red_eye),
              Obscuretext: true,
              isPassword: true,
              controllerr: passwordcontroller,
                onsaved: (value){
                  passwordcontroller.text = value!;
                },
                validatorr: (value){
                  RegExp regex= RegExp(r'^.{6,}$');
                  if (value!.isEmpty) {
                    return('Password is required for login');
                  }
                  if (!regex.hasMatch(value)) {
                    return("Password enter valid Password(Min. 6 Character");
                  }
                  // ignore: null_check_always_fails
                  return null!;
                },),
                Spacer(),
                Button1(name: 'Continue', color1: rightbutton, func: (){})
          ],
        ),
      ),   
    );
  }
}