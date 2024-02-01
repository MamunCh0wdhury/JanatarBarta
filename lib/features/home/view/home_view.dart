import 'package:flutter/material.dart';
import 'news_view/news_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          /// -- Tab views to display news category
          TabBar(controller: tabController, tabs: const [
            Tab(
              text: 'All news',
            ),
            Tab(
              text: 'Local news',
            ),
            Tab(
              text: 'Short News',
            ),
          ]),
          /// -- TabBar View to display its contents
          NewsView(tabController: tabController),
        ],
      ),
    );
  }
}


