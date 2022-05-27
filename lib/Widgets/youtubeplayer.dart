import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Youtubepage extends StatefulWidget {
  const Youtubepage({ Key? key }) : super(key: key);

  @override
  State<Youtubepage> createState() => _YoutubepageState();
}

class _YoutubepageState extends State<Youtubepage> {
  late YoutubePlayerController controller;
  @override
  void initState(){
    super.initState();
    const url = 'https://www.youtube.com/watch?v=8GH9YsnHr60';
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!);
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