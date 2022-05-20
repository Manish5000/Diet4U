import 'dart:collection';
import 'package:diet4u/Screens/SingupandSignin/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:diet4u/Screens/Accountsetup/activitylevel.dart';
import 'package:diet4u/Screens/Accountsetup/gender.dart';
import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Screens/ForgotAndResetPass/createpass.dart';
import 'package:diet4u/Screens/ForgotAndResetPass/smsorEmail.dart';
import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/Onboarding/splashscreen.dart';
import 'package:diet4u/Screens/Onboarding/welcome1.dart';
import 'package:diet4u/Screens/Onboarding/welcome2.dart';
import 'package:diet4u/Screens/Onboarding/welcome3.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:diet4u/Screens/SingupandSignin/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=> GoogleSignInProvider(),
    child: MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    ),
    
  );
}



