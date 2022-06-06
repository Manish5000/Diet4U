import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Youtubepage extends StatefulWidget {
  final String? youtubelink;
   Youtubepage({ this.youtubelink });

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
        ]),
      ),);
  }
}