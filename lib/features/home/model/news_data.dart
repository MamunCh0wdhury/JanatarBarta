/// _id : "65d9da0b25f5412c2e25cb97"
/// title : "এক সঙ্গে ফাঁসিতে আত্মহত্যা একই ঘরে স্বামী স্ত্রীর।"
/// urlLink : "https://www.youtube.com/watch?v=BRGBroXDfKw"
/// thumbNailUrl : "https://img.youtube.com/vi/BRGBroXDfKw/0.jpg"
/// createdAt : "2024-02-24T11:59:07.951Z"
/// updatedAt : "2024-02-24T11:59:07.951Z"
/// __v : 0

class NewsData {
  NewsData({
      String? id, 
      String? title, 
      String? urlLink, 
      String? thumbNailUrl, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _title = title;
    _urlLink = urlLink;
    _thumbNailUrl = thumbNailUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  NewsData.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _urlLink = json['urlLink'];
    _thumbNailUrl = json['thumbNailUrl'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _urlLink;
  String? _thumbNailUrl;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
NewsData copyWith({  String? id,
  String? title,
  String? urlLink,
  String? thumbNailUrl,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => NewsData(  id: id ?? _id,
  title: title ?? _title,
  urlLink: urlLink ?? _urlLink,
  thumbNailUrl: thumbNailUrl ?? _thumbNailUrl,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get urlLink => _urlLink;
  String? get thumbNailUrl => _thumbNailUrl;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['urlLink'] = _urlLink;
    map['thumbNailUrl'] = _thumbNailUrl;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}