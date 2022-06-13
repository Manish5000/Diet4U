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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Leafy Greens',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Leafygreens,image: AssetImage('assets/protiendiet.jpg'),title: 'Leafy Greens',)));},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Fruits',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Fruits,image: AssetImage('assets/protiendiet.jpg'),title: 'Fruits',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Beans and Legumes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Beansandlegumes,image: AssetImage('assets/protiendiet.jpg'),title: 'Beans and Legumes',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Sweet potatoes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Sweetpotatoes,image: AssetImage('assets/protiendiet.jpg'),title: 'Sweet Potatoes',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Beets',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Beets,image: AssetImage('assets/protiendiet.jpg'),title: 'Beets',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Tart Cherry Juice',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Tartcherryjuice,image: AssetImage('assets/protiendiet.jpg'),title: 'Tart Cherry Juice',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Garlic',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Garlic,image: AssetImage('assets/protiendiet.jpg'),title: 'Garlic',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Mushrooms',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Mushrooms,image: AssetImage('assets/protiendiet.jpg'),title: 'Mushrooms',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'White Lean Fish',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Whiteleanfish,image: AssetImage('assets/protiendiet.jpg'),title: 'White Lean Fish',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Egg Whites',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Eggwhites,image: AssetImage('assets/protiendiet.jpg'),title: 'Egg Whites',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
