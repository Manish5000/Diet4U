import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/dietdescription.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighProtien extends StatefulWidget {
  const HighProtien({Key? key}) : super(key: key);

  @override
  State<HighProtien> createState() => _HighProtienState();
}

class _HighProtienState extends State<HighProtien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('High Protien Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Eggs',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                Dietdescription(description: Eggs, image: AssetImage('assets/sprinting.png'),title: 'Eggs',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Almonds',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(
                  title: 'Almonds',image: AssetImage('assets/protiendiet.jpg'),description: Almonds,
                )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Chicken Breast',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Chickenbreast, image: AssetImage('assets/protiendiet.jpg'), title: 'Chicken Breast')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Paneer',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Paneer, image: AssetImage('assets/protiendiet.jpg'), title: 'Paneer')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Cottage Cheese',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Cottagecheese, image:AssetImage('assets/protiendiet.jpg'), title: 'Cottage Cheese')));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Milk',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Milk, image: AssetImage('assets/protiendiet.jpg'), title: 'Milk')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Lean beef',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Leanbeef, image: AssetImage('assets/protiendiet.jpg'), title: 'Lean Beef')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Fish ',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Fish, image: AssetImage('assets/protiendiet.jpg'), title: 'Fish')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Pumpkin seeds',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Pumpkinseeds, image: AssetImage('assets/protiendiet.jpg'), title: 'Pumpkin Seeds')));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Peanuts and\n peanut butter',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Dietdescription(description: Peanutandpeanutbutter, image: AssetImage('assets/protiendiet.jpg'), title: 'Peanuts and Peanut Butter')));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
