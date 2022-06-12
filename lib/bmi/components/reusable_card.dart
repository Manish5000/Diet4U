import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({ this.colour, this.cardChild, this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        child: widget.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: widget.colour,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
