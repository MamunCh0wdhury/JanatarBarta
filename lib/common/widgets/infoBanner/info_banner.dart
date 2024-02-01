import 'package:flutter/material.dart';

class InfoBanner extends StatelessWidget {
  const  InfoBanner({
    super.key,
    this.height=130.0,
    // this.width=340,
    required this.imgUrl,
    this.border,
    this.backgroundColor=Colors.greenAccent,
    this.fit=BoxFit.contain,
    this.isNetworkImage=false,
    this.onTap,
    this.applyImageRadius=true,
    this.borderRadius=10.0,
    required this.text,
    this.imgHeight=120.0
  });

  final double? height;
  final String imgUrl;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final bool applyImageRadius;
  final double borderRadius;
  final String text;
  final double imgHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height*0.6,
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text(
            //   text,
            //   style: Theme.of(context).textTheme.titleSmall,
            // ),
            ClipRRect(
                borderRadius: applyImageRadius
                    ? BorderRadius.circular(borderRadius)
                    : BorderRadius.zero,
                child: Image(
                  image: isNetworkImage
                      ? NetworkImage(imgUrl)
                      : AssetImage(imgUrl) as ImageProvider,
                  height: imgHeight,
                  fit: fit,
                ))
          ],
        ),
      ),
    );
  }
}