import 'package:flutter/material.dart';
import 'package:janatar_barta/features/home/view/news_view/info_banner_widget/info_banner_widget.dart';

class NewsView extends StatelessWidget {
  const NewsView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.6,
      child: TabBarView(controller: tabController, children: const [
        Center(child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
            InfoBannerWidget(),
          ],),
        )),
        Center(child: Text('Local ')),
        Center(child: Text('Tech ')),
      ]),
    );
  }
}