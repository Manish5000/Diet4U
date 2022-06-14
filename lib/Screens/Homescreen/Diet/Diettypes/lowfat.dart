import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/dietdescription.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowFat extends StatefulWidget {
  const LowFat({Key? key}) : super(key: key);

  @override
  State<LowFat> createState() => _LowFatState();
}

class _LowFatState extends State<LowFat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Low Fat Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/leafygreens.jpg', name: 'Leafy Greens',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Leafygreens,image: AssetImage('assets/leafygreens.jpg'),title: 'Leafy Greens',)));},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/fruits.jpg', name: 'Fruits',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Fruits,image: AssetImage('assets/fruits.jpg'),title: 'Fruits',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/beansandlegumes.jpg', name: 'Beans and Legumes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Beansandlegumes,image: AssetImage('assets/beansandlegumes.jpg'),title: 'Beans and Legumes',)));
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
              ReuseableCard(assetimage: 'assets/tartcherryjuice.jpg', name: 'Tart Cherry Juice',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Tartcherryjuice,image: AssetImage('assets/tartcherryjuice.jpg'),title: 'Tart Cherry Juice',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/garlic.jpg', name: 'Garlic',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Garlic,image: AssetImage('assets/garlic.jpg'),title: 'Garlic',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/mushrooms.jpg', name: 'Mushrooms',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Mushrooms,image: AssetImage('assets/mushrooms.jpg'),title: 'Mushrooms',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/salmonandoilyfish.jpg', name: 'White Lean Fish',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Whiteleanfish,image: AssetImage('assets/salmonandoilyfish.jpg'),title: 'White Lean Fish',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/eggs.jpg', name: 'Egg Whites',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Eggwhites,image: AssetImage('assets/eggs.jpg'),title: 'Egg Whites',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
