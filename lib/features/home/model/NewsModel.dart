/// _id : "65cc6896157fa3b5ec340c70"
/// title : "নিন্মমানের কাজের খেসারত। "
/// urlLink : "https://www.youtube.com/watch?v=FhK__nOV2yc"
/// __v : 0

class NewsModel {
  NewsModel({
      String? id, 
      String? title, 
      String? urlLink, 
      num? v,}){
    _id = id;
    _title = title;
    _urlLink = urlLink;
    _v = v;
}

  NewsModel.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _urlLink = json['urlLink'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _urlLink;
  num? _v;
NewsModel copyWith({  String? id,
  String? title,
  String? urlLink,
  num? v,
}) => NewsModel(  id: id ?? _id,
  title: title ?? _title,
  urlLink: urlLink ?? _urlLink,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get urlLink => _urlLink;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['urlLink'] = _urlLink;
    map['__v'] = _v;
    return map;
  }

}