import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/SingupandSignin/login.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Signupwithmail extends StatefulWidget {


  @override
  State<Signupwithmail> createState() => _SignupwithmailState();
}

class _SignupwithmailState extends State<Signupwithmail> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //editing controller

  //editing controller
  final TextEditingController? emailcontroller = TextEditingController();
  final TextEditingController? passwordcontroller = TextEditingController();
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40),
                child: Heading2(text: 'Create your account'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.070,),
              TextFormField(

            decoration: InputDecoration(isDense: true,
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
                  emailcontroller!.text = value!;
                },
                validator: (value){
                  if (value!.isEmpty) {
                    return('Please enter your email ');
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                    return("Please Enter a valid email ");
                  }
                  
                  return null;
                }
            ),
            
              SizedBox(height:15 ,),
              TextFormField(
                obscureText:obscuretext ,
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
                  emailcontroller!.text = value!;
                },
                 validator: (value){
                RegExp regex= RegExp(r'^.{6,}$');
                if (value!.isEmpty) {
                  return('Please enter password');
                }
                if (!regex.hasMatch(value)) {
                  return("Please enter valid Password(Min. 6 Character");
                }
                return null;
              },
            ),
              SizedBox(height: MediaQuery.of(context).size.height*0.035,),  
               Button1(name: 'Signup', color1: rightbutton, func: (){
                 if(_formKey.currentState!.validate())
  {
 
          signup(emailcontroller!.text, passwordcontroller!.text);
              
  }
               }),
               SizedBox(height: MediaQuery.of(context).size.height*0.070,), 
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
              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
              Container(
                
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                color: Colors.white
                ),
                child: Center(child: Icon(FontAwesomeIcons.google)),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: GoogleFonts.urbanist(color: Colors.grey),),
                  TextButton(onPressed: (){}, child: Text('Sign in',style: GoogleFonts.urbanist(color: rightbutton,fontWeight: FontWeight.bold
                  ),))
                ],
              )
               
             
        
        
          ]),
        ),
        
      ),
      
    );
  }
  Future signup(String email, String password) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password).then((uid) =>{

    
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginwithmail())),
    }).catchError((e){
      Fluttertoast.showToast(msg:e!.message); 
    });
  }




}