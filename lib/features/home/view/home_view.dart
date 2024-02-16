import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';
import 'package:janatar_barta/features/home/view/news_view.dart';

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
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
      ),
      body: FutureBuilder(
        future: controller.getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsView(
                          title: snapshot.data![index].title.toString(),
                        ),
                      ),
                    );
                  },
                  title: Text(snapshot.data![index].title.toString()),
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
    );
  }
}
