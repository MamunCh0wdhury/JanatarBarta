import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/common/widgets/card/widget/shimmer.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';
import 'package:janatar_barta/features/home/controller/refresh_controller.dart';
import 'package:janatar_barta/features/home/view/news_view.dart';
import '../../../common/widgets/card/final_card.dart';
import 'package:get_time_ago/get_time_ago.dart';

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
                  var timestamp = snapshot.data![index].timestamps
                      .toString(); // [DateTime] formatted as String.
                  var convertedTimestamp = DateTime.parse(
                      timestamp); // Converting into [DateTime] object
                  var result = GetTimeAgo.parse(convertedTimestamp);
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
                      uploadTime: result,
                      title: snapshot.data![index].title.toString(),
                      thumbnailUrl:
                          snapshot.data![index].thumbNailUrl.toString(),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text("Service unavailable"));
            } else {
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
