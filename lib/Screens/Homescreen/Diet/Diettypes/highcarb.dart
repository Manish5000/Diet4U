import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/dietdescription.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighCarbs extends StatefulWidget {
  const HighCarbs({Key? key}) : super(key: key);

  @override
  State<HighCarbs> createState() => _HighCarbsState();
}

class _HighCarbsState extends State<HighCarbs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('High Carb Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/oats.jpg', name: 'Oats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Oats,image: AssetImage('assets/oats.jpg'),title: 'Oats',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/buckwheats.jpg', name: 'Buckwheat',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Buckwheats,image: AssetImage('assets/buckwheats.jpg'),title: 'Buckwheat',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/bananas.jpg', name: 'Bananas',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Bananas,image: AssetImage('assets/bananas.jpg'),title: 'Bananas',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sweetpotatoes.jpg', name: 'Sweet potatoes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Sweetpotatoes,image: AssetImage('assets/sweetpotatoes.jpg'),title: 'Sweet Potatoes',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/beets.jpg', name: 'Beets',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Beets,image: AssetImage('assets/beets.jpg'),title: 'Beets',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/oranges.jpg', name: 'Oranges',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Oranges,image: AssetImage('assets/oranges.jpg'),title: 'Oranges',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/blueberries.jpg', name: 'Blueberries',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Blueberries,image: AssetImage('assets/blueberries.jpg'),title: 'Blueberries',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/apples.jpg', name: 'Apples',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Apples,image: AssetImage('assets/apples.jpg'),title: 'Apples',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/kidneybeans.jpg', name: 'Kidney Beans',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Kidneybeans,image: AssetImage('assets/kidneybeans.jpg'),title: 'Kidney Beans',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/peanutsbutter.jpg', name: 'Peanuts and\n peanut butter',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Peanutandpeanutbutter,image: AssetImage('assets/peanutsbutter.jpg'),title: 'Peanuts and Peanut Butter',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
