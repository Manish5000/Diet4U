import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/bmi/components/bottom_button.dart';
import 'package:diet4u/bmi/components/reusable_card.dart';
import 'package:diet4u/bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ResultsPage extends StatefulWidget {
  ResultsPage(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('Your Result',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold,color: Colors.black),),
      backgroundColor: Colors.white,
     ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
  //         Expanded(
  //           child: Container(
  //             padding: EdgeInsets.all(15.0),
  //             alignment: Alignment.bottomLeft,
  //             child: Text(
  //               'Your Result',
  //               style: GoogleFonts.urbanist( fontSize: 50.0,
  // fontWeight: FontWeight.bold,),
  //             ),
  //           ),
  //         ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.resultText!.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      widget.bmiResult!,
                      style: kBMITextStyle,
                    ),
                    Text(
                      widget.interpretation!,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: BottomButton(
                color1: rightbutton,
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
