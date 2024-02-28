import 'package:get/get.dart';

class TimeController extends GetxController {

  final fifteenAgo = DateTime.now().subtract(const Duration(seconds: 1));
}