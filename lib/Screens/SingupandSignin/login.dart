import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
class Loginwithmail extends StatefulWidget {
  const Loginwithmail({ Key? key }) : super(key: key);

  @override
  State<Loginwithmail> createState() => _LoginwithmailState();
}

class _LoginwithmailState extends State<Loginwithmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(45, 75, 30, 50),
        child: 
      Column(
        children: [
          Heading2(text: 'Login to your Account'),
          Textfield(text: 'Email',prefixicon: Icons.mail,),
          Textfield(text: 'Password',prefixicon: Icons.key,suffixicon: Icons.hide_image),
        ]),),
    );
  }
}