class InterestModel {
  InterestModel({
    this.success,
    this.message,
    this.interest,
  });

  InterestModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      interest = [];
      json['data'].forEach((v) {
        interest?.add(Interest.fromJson(v));
      });
    }
  }

  bool? success;
  String? message;
  List<Interest>? interest;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (interest != null) {
      map['data'] = interest?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Interest {
  Interest({
    this.id,
    this.icon,
    this.name,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  Interest.fromJson(dynamic json) {
    id = json['_id'];
    icon = json['icon'];
    name = json['name'];
    v = json['__v'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? id;
  String? icon;
  String? name;
  num? v;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['icon'] = icon;
    map['name'] = name;
    map['__v'] = v;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}
