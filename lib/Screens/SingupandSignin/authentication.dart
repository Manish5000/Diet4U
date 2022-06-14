import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class Authentication extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child:CircularProgressIndicator() ,);
            }
            else if(snapshot.hasData){
              return Homescreen();
            }
            else if(snapshot.hasError){
              return Center(
                child: Text('Something went wrong'),
              );
            }
            else{
              return ChooseAccount();
            }
        } ,
      ),
    );
  }
}