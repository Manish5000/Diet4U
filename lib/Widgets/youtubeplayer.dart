import 'dart:ffi';

import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Youtubepage extends StatefulWidget {
  final String? youtubelink;
  final String? heading;
  final String? description;
   Youtubepage({ this.youtubelink, this.heading, this.description });

  @override
  State<Youtubepage> createState() => _YoutubepageState();
}

class _YoutubepageState extends State<Youtubepage> {
  
  late  YoutubePlayerController controller;
  @override
  void initState(){
    super.initState();
    
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(widget.youtubelink!)!);
  }
  @override
  void deactivate(){
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller,), 
      builder: (context,player)=>Scaffold(
        body: ListView(children: [
          player,
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.heading!, style: GoogleFonts.urbanist(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: leftButton
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(widget.description!,textAlign: TextAlign.center, style: GoogleFonts.urbanist(color: Colors.black,fontSize: 16,)),
                    
                  )),
              ],
            )
          ),
        ]),
      ),);
  }
}