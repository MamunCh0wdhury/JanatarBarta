import 'package:get/get.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';

class RefreshController extends GetxController {
  NewsController controller = Get.put(NewsController());
  Future<void> handleRefresh() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => controller.getNews(),
    );
  }
}
