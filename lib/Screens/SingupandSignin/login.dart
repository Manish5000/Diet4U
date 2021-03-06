// ignore_for_file: prefer_const_constructors

import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Screens/ForgotAndResetPass/smsorEmail.dart';
import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Loginwithmail extends StatefulWidget {
  const Loginwithmail({ Key? key ,this.ismail}) : super(key: key);
final bool? ismail  ;
  @override
  State<Loginwithmail> createState() => _LoginwithmailState();
}

class _LoginwithmailState extends State<Loginwithmail> {
  final  _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //editing controller
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(leading:Icon(Icons.arrow_back,color: Colors.black,) ,backgroundColor: Colors.white,elevation: 0,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: 
      Form(
        key: _formKey,
        child: 
        Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left:20,top: 40),
              child: Heading2(text: 'Login to your Account'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            TextFormField(
            decoration: InputDecoration(
              isDense: true,
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Color(0xFF7552FF))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  
                  color: Color(0xFF7552FF))),
              hintText: 'Email',
             prefixIcon: Icon(Icons.mail)
          
            ),
            controller: emailcontroller,
                onSaved: (value){
                  emailcontroller.text = value!;
                },
                validator: (value){
                  if (value!.isEmpty) {
                    return('Email is required for login');
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                    return("Please Enter a valid email ");
                  }
                  
                  return null;
                }
            ),
            
            SizedBox(height: 15),
            TextFormField(
              
              obscureText: obscuretext,
            decoration: InputDecoration(
              isDense: true,
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Color(0xFF7552FF))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  
                  color: Color(0xFF7552FF))),
              hintText: 'Password',
             prefixIcon: Icon(Icons.key_sharp),
             suffixIcon: IconButton(
                   icon: Icon(Icons.hide_source),
                   onPressed: (){
                      setState(() {
                            obscuretext=!obscuretext;
                 
                      });
                   },
                    ),
          
            ),
            controller: passwordcontroller,
                onSaved: (value){
                  emailcontroller.text = value!;
                },
                 validator: (value){
                RegExp regex= RegExp(r'^.{6,}$');
                if (value!.isEmpty) {
                  return('Password is required for login');
                }
                if (!regex.hasMatch(value)) {
                  return("Please enter valid Password(Min. 6 Character");
                }
                return null;
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
            Button1(name: 'Sign In', 
            color1: rightbutton, 
            func: (){
              if(_formKey.currentState!.validate())
  {
 
          
              signIn(emailcontroller.text, passwordcontroller.text);
  }
  
  }),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => SMSorEmail())));
            },
            child: Text('Forgot Password?',
            style: GoogleFonts.urbanist(fontSize: 14,color: rightbutton,fontWeight: FontWeight.bold),)),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text('Or continue with'),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(height: 1,
                    decoration: BoxDecoration(color: Colors.black),),
                  ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height*0.07,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.facebook,color: Colors.black,),
                Icon(FontAwesomeIcons.google),
              
              ],)
          ]),
      ),),
    );
  }



  void signIn(String email, String password) async{
    
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password)
    .then((uid) => {
      Fluttertoast.showToast(msg: "Login successful"),
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homescreen())),
    }).catchError((e){
      Fluttertoast.showToast(msg:e!.message); 
    });
  
}
}