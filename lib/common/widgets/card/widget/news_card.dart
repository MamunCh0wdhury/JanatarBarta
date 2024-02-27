import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNewsCard extends StatelessWidget {
  const MyNewsCard({
    super.key,
    required this.thumbnailUrl,
    required this.title,
    required this.uploadTime,
  });

  final String thumbnailUrl;
  final String title;
  final String uploadTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      margin: EdgeInsets.symmetric(
          horizontal: 20.w, vertical: 10.h), // Change as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.33),
                  BlendMode.multiply,
                ),
                image: CachedNetworkImageProvider(
                  thumbnailUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.1,
            child: const Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
            // Change as needed
            child: Text(title, style: Theme.of(context).textTheme.titleSmall),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
            // Change as needed
            child: Text("Posted $uploadTime ago",
                style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
      ),
    );
  }
}
