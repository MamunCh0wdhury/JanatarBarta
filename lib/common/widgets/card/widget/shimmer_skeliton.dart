import 'package:flutter/material.dart';
import 'package:janatar_barta/common/widgets/card/widget/shimmer.dart';

class ShimmerSkeliton extends StatelessWidget {
  const ShimmerSkeliton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const ShimmerEffect(),
        separatorBuilder: (context, index) => const SizedBox(
              height: 8.0,
            ),
        itemCount: 4);
  }
}
