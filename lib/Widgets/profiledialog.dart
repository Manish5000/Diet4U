import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:diet4u/Screens/SingupandSignin/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Profiledialog extends StatefulWidget {


  @override
  State<Profiledialog> createState() => _ProfiledialogState();
}

class _ProfiledialogState extends State<Profiledialog> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
    
      title: Row(
        
        children: [
          GestureDetector(
            onTap: (){Navigator.pop(context, false);},
            child: Icon(Icons.cancel,color: Colors.black,)),
          SizedBox(width: MediaQuery.of(context).size.width*0.175,),
          Text('Diet4U',style: GoogleFonts.urbanist(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold)),
        ],
      ),
      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))), 
      elevation: 10,
      content: Column(
        mainAxisSize: MainAxisSize.min,

children: [
  Container(
    child: Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Icon(FontAwesomeIcons.user,color: Colors.black,size: 17,),
              SizedBox(width: MediaQuery.of(context).size.width*0.050,),
              Text('Profile',style: GoogleFonts.urbanist(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.040,),
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Icon(FontAwesomeIcons.gear,color: Colors.black,size: 17,),
              SizedBox(width: MediaQuery.of(context).size.width*0.050,),
              Text('Settings',style: GoogleFonts.urbanist(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.040,),
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Icon(FontAwesomeIcons.users,color: Colors.black,size: 17,),
              SizedBox(width: MediaQuery.of(context).size.width*0.050,),
              Text('About Us',style: GoogleFonts.urbanist(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.300,),
Buttonarea(text: 'Logout', icon: FontAwesomeIcons.arrowRightFromBracket,c: Colors.black,func: (){
  final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
  provider.logout();
 
  
},)
      ],
    ),
  )
 
],      ));
  }
}