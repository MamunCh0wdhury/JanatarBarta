import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NewsController controller = Get.put(NewsController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
      ),
      body: FutureBuilder(
        future: controller.getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return const ListTile();
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
