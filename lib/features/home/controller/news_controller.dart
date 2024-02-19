import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart';
import '../model/news_data.dart';

class NewsController extends GetxController {
  List<NewsData> newsList = [];

  Future<List<NewsData>> getNews() async {
    final response = await get(Uri.parse("https://janatarbarta.onrender.com/news"));
    var data = jsonDecode(response.body.toString());
    newsList.clear();
    if (response.statusCode == 200) {
      for (Map i in data) {
        newsList.add(NewsData.fromJson(i));
      }
      return newsList;
    } else {
      return newsList;
    }
  }
}
