import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';
import 'package:janatar_barta/features/home/controller/refresh_controller.dart';
import 'package:janatar_barta/features/home/view/news_view.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../../../common/widgets/card/final_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NewsController controller = Get.put(NewsController());
  RefreshController refreshController = Get.put(RefreshController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
      ),
      body: LiquidPullToRefresh(
        onRefresh: refreshController.handleRefresh,
        showChildOpacityTransition: false,
        animSpeedFactor: 5,
        height: 150.h,
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
                      uploadTime: snapshot.data![index].createdAt.toString(),
                      title: snapshot.data![index].title.toString(),
                      thumbnailUrl:
                          snapshot.data![index].thumbNailUrl.toString(),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
