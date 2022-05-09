import 'dart:collection';

import 'package:diet4u/Screens/Accountsetup/activitylevel.dart';
import 'package:diet4u/Screens/Accountsetup/gender.dart';
import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Screens/Onboarding/splashscreen.dart';
import 'package:diet4u/Screens/Onboarding/welcome1.dart';
import 'package:diet4u/Screens/Onboarding/welcome2.dart';
import 'package:diet4u/Screens/Onboarding/welcome3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}
