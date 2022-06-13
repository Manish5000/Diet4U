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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Oats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Oats,image: AssetImage('assets/sprinting.png'),title: 'Oats',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Buckwheat',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Buckwheats,image: AssetImage('assets/sprinting.png'),title: 'Buckwheat',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Bananas',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Bananas,image: AssetImage('assets/sprinting.png'),title: 'Bananas',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Sweet potatoes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Sweetpotatoes,image: AssetImage('assets/sprinting.png'),title: 'Sweet Potatoes',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Beets',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Beets,image: AssetImage('assets/sprinting.png'),title: 'Beets',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Oranges',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Oranges,image: AssetImage('assets/sprinting.png'),title: 'Oranges',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Blueberries',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Blueberries,image: AssetImage('assets/sprinting.png'),title: 'Blueberries',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Apples',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Apples,image: AssetImage('assets/sprinting.png'),title: 'Apples',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Kidney Beans',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Kidneybeans,image: AssetImage('assets/sprinting.png'),title: 'Kidney Beans',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Peanuts and\n peanut butter',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Peanutandpeanutbutter,image: AssetImage('assets/sprinting.png'),title: 'Peanuts and Peanut Butter',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
