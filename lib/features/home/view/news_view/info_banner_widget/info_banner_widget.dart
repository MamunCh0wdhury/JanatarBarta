import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/infoBanner/info_banner.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        InfoBanner(
          imgUrl: 'https://picsum.photos/250?image=9',
          text:'Trending News',
           isNetworkImage: true,
        ),
        InfoBanner(
          imgUrl: 'https://picsum.photos/250?image=9',
          text: "MText.infoBannerText2",
          isNetworkImage: true,
        ),
      ],
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlay: true,
        height: 150.0,
      ),
    );
  }
}
