import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard extends StatelessWidget {
  const NewsCard( {
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      height: 260.h,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4, // Change as needed
        margin: EdgeInsets.symmetric(
            horizontal: 25.w, vertical: 10.h), // Change as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.33),
                    BlendMode.multiply,
                  ),
                  image: const NetworkImage(
                      'https://via.placeholder.com/150'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 120.h,
              width: 120.w,
            ),
            Padding(
              padding:   EdgeInsets.symmetric(
                  vertical: 16.h, horizontal: 16.w),
              // Change as needed
              child: Text(title,
                  style:
                  Theme.of(context).textTheme.titleSmall),
            ),
          ],
        ),
      ),
    );
  }
}