import 'package:flutter/material.dart';
import 'widget/news_card.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.title,
    required this.thumbnailUrl,
    required this.uploadTime,
  });

  final String title;
  final String thumbnailUrl;
  final String uploadTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      width: MediaQuery.of(context).size.width,
      child: MyNewsCard(
          thumbnailUrl: thumbnailUrl, title: title, uploadTime: uploadTime),
    );
  }
}
