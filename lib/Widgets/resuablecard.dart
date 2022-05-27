import 'package:flutter/material.dart';

class ReuseableCard extends StatefulWidget {
  const ReuseableCard(
      {Key? key,
      @required this.assetimage,
      @required this.contentname,
      @required this.name})
      : super(key: key);
  final String? assetimage;
  final String? name;
  final String? contentname;
  @override
  State<ReuseableCard> createState() => _ReuseableCardState();
}

class _ReuseableCardState extends State<ReuseableCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), border: Border.all()),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Row(children: [
          Image(
            image: AssetImage(
              widget.assetimage!,
            ),
            width: 150,
            height: 150,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(widget.name!),
              SizedBox(
                height: 10,
              ),
              Text(widget.contentname!)
            ],
          )
        ]),
      ),
    );
  }
}
