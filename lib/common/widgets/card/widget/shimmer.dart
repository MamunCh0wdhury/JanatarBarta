import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
      // Change as needed
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// -- Image View
            Skeliton(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            /// -- Title View
            Skeliton(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            /// -- Post Time View
            Skeliton(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class Skeliton extends StatelessWidget {
  const Skeliton({
    super.key,
    this.height,
    this.width,
  });
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
        height: height,
        width: width,
      ),
    );
  }
}
