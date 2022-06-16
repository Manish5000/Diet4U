
import 'package:diet4u/Screens/SingupandSignin/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:diet4u/Screens/SingupandSignin/login.dart';
import 'package:diet4u/Screens/SingupandSignin/signup.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ChooseAccount extends StatefulWidget {
  const ChooseAccount({ Key? key }) : super(key: key);

  @override
  State<ChooseAccount> createState() => _ChooseAccountState();
}

class _ChooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false ,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20,top: 40) ,
                    child: Heading2(text: "Let's you in"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.150,),
                  Buttonarea(text: 'Continue with E-mail',icon: Icons.mail,c: Colors.black,func: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  Loginwithmail()));
                  },),
                  SizedBox(height: 10,),
                  Buttonarea(text: 'Conitnue with google', 
                  icon: FontAwesomeIcons.google,
                  c: Colors.black,
                  iconsize: 20,
                  func: (){
                    final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                    provider.googleLogin();
                  },),
                  SizedBox(height: MediaQuery.of(context).size.height*0.140,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Or'),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(height: 1,
                        decoration: BoxDecoration(color: Colors.black),),
                      ),
                  ],),
                  SizedBox(height: MediaQuery.of(context).size.height*0.150,),
                  Button1(name: 'Signup', color1: rightbutton, func: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Signupwithmail()))); 
                  })
        
                  
                ],
              ),
            );
          }
        ),
        
      ),
    );
  }
}


class Buttonarea extends StatefulWidget {

  final String? text;
  final IconData? icon;
  final Color? c;
  final double? iconsize;
  final VoidCallback? func;

  
   Buttonarea({ @required this.text, @required this.icon,this.func, this.c,this.iconsize});

  @override
  State<Buttonarea> createState() => _ButtonareaState();
}

class _ButtonareaState extends State<Buttonarea> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        fixedSize: Size(MediaQuery.of(context).size.width*0.88, MediaQuery.of(context).size.height*0.070),
        elevation: 5,
        primary: Colors.white
      ),
      onPressed: widget.func,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon,color: widget.c,size: widget.iconsize,),
          SizedBox(width: 10,),
          Text(widget.text!,style: GoogleFonts.urbanist(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}