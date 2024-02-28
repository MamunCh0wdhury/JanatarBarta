import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/common/widgets/card/widget/shimmer.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';
import 'package:janatar_barta/features/home/controller/refresh_controller.dart';
import 'package:janatar_barta/features/home/controller/time_controller.dart';
import 'package:janatar_barta/features/home/view/news_view.dart';
import '../../../common/widgets/card/final_card.dart';
import 'package:timeago/timeago.dart' as timeago;

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NewsController controller = Get.put(NewsController());

  RefreshController refreshController = Get.put(RefreshController());
  TimeController timeController = Get.put(TimeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
      ),
      body: RefreshIndicator(
        onRefresh: refreshController.handleRefresh,
        child: FutureBuilder(
          future: controller.getNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsView(
                            title: snapshot.data![index].title.toString(),
                            link: snapshot.data![index].urlLink.toString(),
                          ),
                        ),
                      );
                    },
                    child: NewCard(
                      uploadTime: timeago.format(timeController.fifteenAgo, locale: 'en'),
                      title: snapshot.data![index].title.toString(),
                      thumbnailUrl:
                          snapshot.data![index].thumbNailUrl.toString(),
                    ),
                  );
                },
              );
            }
            else if(snapshot.hasError){
              return const Text("Currently no news available");
            }
            else {
              return ListView.separated(
                  itemBuilder: (context, index) => const ShimmerEffect(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 8.0,
                      ),
                  itemCount: 4);
            }
          },
        ),
      ),
    );
  }
}
