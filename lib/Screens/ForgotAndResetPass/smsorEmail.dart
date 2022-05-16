import 'package:diet4u/Screens/ForgotAndResetPass/otp.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SMSorEmail extends StatefulWidget {
  const SMSorEmail({ Key? key }) : super(key: key);

  @override
  State<SMSorEmail> createState() => _SMSorEmailState();
}
enum Option{
viasms,
viaemail,
}
class _SMSorEmailState extends State<SMSorEmail> {
   Color inactivecolor = Colors.white;
  Color activecolor = Color(0xFF7552FF);
   Option? Selectoption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Lottie.asset('assets/forgotpassword.json',height: 250),
            SizedBox(height: MediaQuery.of(context).size.height*0.050),
            Text('Select which contact datails should we use to reset \nyour paswword',
            style: GoogleFonts.urbanist(
              color: Colors.black),),
              SizedBox(height: MediaQuery.of(context).size.height*0.010,),
              GestureDetector(
                onTap: (){setState(() {
                  Selectoption = Option.viasms;
                });},
                child: Container(
                  height: MediaQuery.of(context).size.height*0.120,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Selectoption == Option.viasms? activecolor: inactivecolor,width: 2),
            ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          
                          radius: 30,
                          backgroundColor: rightbutton,
                          backgroundImage: AssetImage('assets/sms.jpg',),
                          ),
                      ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Via SMS',style: GoogleFonts.urbanist(color: Colors.grey,fontWeight: FontWeight.bold),),
                            Text('+918094705928',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        )
                    ],
                  ),),),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Selectoption = Option.viaemail;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.120,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Selectoption == Option.viaemail? activecolor : inactivecolor,width: 2,),
              
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: rightbutton,
                          backgroundImage: AssetImage('assets/mail.jpg',),
                          ),
                      ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Via Email',style: GoogleFonts.urbanist(color: Colors.grey,fontWeight: FontWeight.bold),),
                            Text('manish@gmail.com',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Button1(name: 'Continue', color1: rightbutton, func: (){
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => OTPpage())));
              })
          ],
        ),
      ),
      
    );
  }
}

