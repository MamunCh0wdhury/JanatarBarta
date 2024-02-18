import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
