import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: id.toString(),
              ),
              aspectRatio: 16 / 9,
              progressIndicatorColor: MColor.defaultColor,
              progressColors: const ProgressBarColors(
                  bufferedColor: MColor.defaultColor,
                  handleColor: MColor.defaultColor,
                  playedColor: MColor.defaultColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              widget.title.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
