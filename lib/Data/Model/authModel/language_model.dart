class LanguageModel {
  LanguageModel({
      this.success, 
      this.message, 
      this.data,});

  LanguageModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Language.fromJson(v));
      });
    }
  }
  bool? success;
  String? message;
  List<Language>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Language {
  Language({
      this.id, 
      this.name, 
      this.v, 
      this.createdAt, 
      this.updatedAt,});

  Language.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    v = json['__v'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  String? id;
  String? name;
  num? v;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['__v'] = v;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}