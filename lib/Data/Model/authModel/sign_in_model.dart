class SignInModel {
  SignInModel({
    this.success,
    this.message,
    this.user,
  });

  SignInModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    user = json['data'] != null ? User.fromJson(json['data']) : null;
  }

  bool? success;
  String? message;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (user != null) {
      map['data'] = user?.toJson();
    }
    return map;
  }
}

class User {
  User({
    this.id,
    this.fullname,
    this.email,
    this.profile,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.bio,
    this.interests,
    this.languages,
    this.token,
    this.requests,
    this.isInvited = false,
  });

  User.fromJson(dynamic json) {
    id = json['_id'];
    fullname = json['fullname'];
    email = json['email'];
    profile = json['profile'];
    verified = json['verified'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    bio = json['bio'];
    if (json['interests'] != null) {
      interests = [];
      json['interests'].forEach((v) {
        interests?.add(Interests.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      languages = [];
      json['languages'].forEach((v) {
        languages?.add(Languages.fromJson(v));
      });
    }
    if (json['requests'] != null) {
      requests = [];
      json['requests'].forEach((v) {
        requests?.add(Request.fromJson(v));
      });
    }
    token = json['token'];
  }

  String? id;
  String? fullname;
  String? email;
  String? profile;
  bool? verified;
  String? createdAt;
  String? updatedAt;
  num? v;
  String? bio;
  List<Interests>? interests;
  List<Languages>? languages;
  String? token;
  List<Request>? requests;
  bool? isInvited;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['fullname'] = fullname;
    map['email'] = email;
    map['profile'] = profile;
    map['verified'] = verified;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    map['bio'] = bio;
    if (interests != null) {
      map['interests'] = interests?.map((v) => v.toJson()).toList();
    }
    if (languages != null) {
      map['languages'] = languages?.map((v) => v.toJson()).toList();
    }
    map['token'] = token;
    return map;
  }
}

class Languages {
  Languages({
    this.id,
    this.name,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  Languages.fromJson(dynamic json) {
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

class Interests {
  Interests({
    this.id,
    this.icon,
    this.name,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  Interests.fromJson(dynamic json) {
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

class Request {
  Request({
    this.id,
    this.createdDate,
    this.groupId,
  });

  Request.fromJson(dynamic json) {
    id = json['_id'];
    groupId = json['groupId'];
    createdDate = json['createdDate'];
  }

  String? id;
  String? groupId;
  String? createdDate;
}
