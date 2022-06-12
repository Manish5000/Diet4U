import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData? icon;
  final Function()? onPressed;

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(widget.icon),
      onPressed: widget.onPressed!,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFFb2bfd4),
    );
  }
}
