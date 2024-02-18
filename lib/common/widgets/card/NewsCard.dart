import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard( {
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      height: MediaQuery.of(context).size.height * 0.33,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4, // Change as needed
        margin: const EdgeInsets.symmetric(
            horizontal: 25, vertical: 10), // Change as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
              height: 150,
              width: 150,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                  vertical: 16, horizontal: 16),
              // Change as needed
              child: Text(title,
                  style:
                  Theme.of(context).textTheme.titleLarge),
            ),
          ],
        ),
      ),
    );
  }
}