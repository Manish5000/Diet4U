import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/dietdescription.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weightgain extends StatefulWidget {
  const Weightgain({Key? key}) : super(key: key);

  @override
  State<Weightgain> createState() => _WeightgainState();
}

class _WeightgainState extends State<Weightgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Weightgain Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
      ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              
              SizedBox(
                height: 15,
              ),
              ReuseableCard(assetimage: 'assets/protiensmoothies.jpg', name: 'Homemade protein\nsmoothies',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Homemadesmoothies,image: AssetImage('assets/protiensmoothies.jpg'),title: 'Homemade Protein Smoothies',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/milk.jpg', name: 'Milk',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Milk,image: AssetImage('assets/milk.jpg'),title: 'Milk',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/rice.jpg', name: 'Rice',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Rice,image: AssetImage('assets/rice.jpg'),title: 'Rice',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/nutsandnutbutter.jpg', name: 'Nuts and nut butters',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Nutsandnutbutters,image: AssetImage('assets/nutsandnutbutter.jpg'),title: 'Nuts and Nut Butters',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/redmeats.jpg', name: 'Red meats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Redmeats,image: AssetImage('assets/redmeats.jpg'),title: 'Red Meats',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/potatoesandstarches.jpg', name: 'Potatoes and starches',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Potatoesandstarches,image: AssetImage('assets/potatoesandstarches.jpg'),title: 'Potatoes and Starches',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/salmonandoilyfish.jpg', name: 'Salmon and oily fish',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Salmonandoilyfish,image: AssetImage('assets/salmonandoilyfish.jpg'),title: 'Salmon and Oily Fish',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/driedfruits.jpg', name: 'Dried fruit',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Driedfruits,image: AssetImage('assets/driedfruits.jpg'),title: 'Dried Fruits',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/wholegrainbread.jpg', name: 'Whole grain bread',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Wholegrainbread,image: AssetImage('assets/wholegrainbread.jpg'),title: 'Whole Grain Bread',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/avocados.jpg', name: 'Avocados',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Avacados,image: AssetImage('assets/Avocados.jpg'),title: 'Avocados',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
