import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      child: MyNewsCard(thumbnailUrl: thumbnailUrl, title: title, uploadTime: uploadTime),
    );
  }
}


