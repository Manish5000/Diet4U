import 'package:diet4u/bmi/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatefulWidget {
   BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function() ? onTap;
  final String? buttonTitle;

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!,
      child: Container(
        child: Center(
          child: Text(
            widget.buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFF7552FF),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
