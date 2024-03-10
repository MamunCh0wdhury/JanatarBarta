import 'package:get/get.dart';
import 'package:janatar_barta/features/home/controller/news_controller.dart';

class RefreshController extends GetxController {
  var isRefresh = false.obs;
  NewsController controller = Get.put(NewsController());
  Future<void> handleRefresh() async {
    isRefresh.value = true;
    await Future.delayed(
      const Duration(seconds: 8),
      () {
        isRefresh.value = false;
      },
    );
  }
}
