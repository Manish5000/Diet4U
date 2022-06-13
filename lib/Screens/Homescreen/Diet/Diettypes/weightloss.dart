import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/dietdescription.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weightloss extends StatefulWidget {
  const Weightloss({Key? key}) : super(key: key);

  @override
  State<Weightloss> createState() => _WeightlossState();
}

class _WeightlossState extends State<Weightloss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Weightloss Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: ' Lean Protein',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Leanprotien,image: AssetImage('assets/protiendiet.jpg'),title: 'Lean Protein',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Eggs',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Eggs,image: AssetImage('assets/protiendiet.jpg'),title: 'Eggs',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Vegetables',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Vegetables,image: AssetImage('assets/protiendiet.jpg'),title: 'Vegetables',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Apples',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Apples,image: AssetImage('assets/protiendiet.jpg'),title: 'Apples',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Berriess',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Berries,image: AssetImage('assets/protiendiet.jpg'),title: 'Berries',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Nuts and Seeds',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Nutsandseeds,image: AssetImage('assets/protiendiet.jpg'),title: 'Nuts and Seeds',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Salmon',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Salmon,image: AssetImage('assets/protiendiet.jpg'),title: 'Salmon',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Raw Oats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Rawoats,image: AssetImage('assets/protiendiet.jpg'),title: 'Raw Oats',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Chia Seeds',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Chiaseeds,image: AssetImage('assets/protiendiet.jpg'),title: 'Chia Seeds',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Water',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dietdescription(description: Water,image: AssetImage('assets/protiendiet.jpg'),title: 'Water',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
