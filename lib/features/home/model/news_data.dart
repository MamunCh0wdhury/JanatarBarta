/// _id : "65e17c15729ecd7a893aa473"
/// title : "থানা থেকে উধাও গাঁজা ।"
/// urlLink : "https://www.youtube.com/watch?v=iHaSq_WHP5s"
/// thumbNailUrl : "https://img.youtube.com/vi/iHaSq_WHP5s/0.jpg"
/// timestamps : "2024-03-01T06:56:21.622Z"
/// createdAt : "2024-03-01T06:56:21.623Z"
/// updatedAt : "2024-03-01T06:56:21.623Z"
/// __v : 0

class NewsData {
  NewsData({
      String? id, 
      String? title, 
      String? urlLink, 
      String? thumbNailUrl, 
      String? timestamps, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _title = title;
    _urlLink = urlLink;
    _thumbNailUrl = thumbNailUrl;
    _timestamps = timestamps;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  NewsData.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _urlLink = json['urlLink'];
    _thumbNailUrl = json['thumbNailUrl'];
    _timestamps = json['timestamps'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _urlLink;
  String? _thumbNailUrl;
  String? _timestamps;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
NewsData copyWith({  String? id,
  String? title,
  String? urlLink,
  String? thumbNailUrl,
  String? timestamps,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => NewsData(  id: id ?? _id,
  title: title ?? _title,
  urlLink: urlLink ?? _urlLink,
  thumbNailUrl: thumbNailUrl ?? _thumbNailUrl,
  timestamps: timestamps ?? _timestamps,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get title => _title;
  String? get urlLink => _urlLink;
  String? get thumbNailUrl => _thumbNailUrl;
  String? get timestamps => _timestamps;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['urlLink'] = _urlLink;
    map['thumbNailUrl'] = _thumbNailUrl;
    map['timestamps'] = _timestamps;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}