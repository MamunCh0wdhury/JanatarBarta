import 'dart:convert';
import 'package:get/get.dart';
import 'package:janatar_barta/features/home/model/NewsModel.dart';
import 'package:http/http.dart';

class NewsController extends GetxController {
  List<NewsModel> newsList = [];
  Future<List<NewsModel>> getNews() async {
    final response = await get(Uri.parse(""));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        newsList.add(NewsModel.fromJson(i));
      }
      return newsList;
    } else {
      return newsList;
    }
  }
}
