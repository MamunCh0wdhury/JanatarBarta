import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/color_constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key, required this.title, required this.link});

  final String title;
  final String link;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    String? id = YoutubePlayer.convertUrlToId(widget.link);
    return YoutubePlayerBuilder(player: YoutubePlayer(
      controlsTimeOut: const Duration(seconds: 5),
      showVideoProgressIndicator: true,
      controller: YoutubePlayerController(
        initialVideoId: id.toString(),
        flags: const YoutubePlayerFlags(
          hideThumbnail: true,
          hideControls: false,
          forceHD: true,
          useHybridComposition: true,
          autoPlay: true,
          mute: false,
        ),
      ),
      progressIndicatorColor: MColor.defaultColor,
      progressColors: const ProgressBarColors(
          bufferedColor: MColor.defaultColor,
          handleColor: MColor.defaultColor,
          playedColor: MColor.defaultColor),
    ), builder:(context,player){
      return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: player,
      );
    } );

  }
}
