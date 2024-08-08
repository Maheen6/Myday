class PostModel {
  PostModel({
    this.success,
    this.message,
    this.posts,
  });

  PostModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      posts = [];
      json['data'].forEach((v) {
        posts?.add(Post.fromJson(v));
      });
    }
  }

  bool? success;
  String? message;
  List<Post>? posts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (posts != null) {
      map['data'] = posts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Post {
  Post({
    this.id,
    this.groupId,
    this.postType,
    this.content,
    this.media,
    this.likes,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.isDeleted,
    this.user,
  });

  Post.fromJson(dynamic json) {
    id = json['_id'];
    groupId = json['groupId'];
    postType = json['postType'];
    content = json['content'];
    media = json['media'];
    // if (json['likes'] != null) {
    //   likes = [];
    //   json['likes'].forEach((v) {
    //     likes?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['comments'] != null) {
    //   comments = [];
    //   json['comments'].forEach((v) {
    //     comments?.add(Dynamic.fromJson(v));
    //   });
    // }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    isDeleted = json['isDeleted'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? id;
  String? groupId;
  String? postType;
  String? content;
  String? media;
  List<dynamic>? likes;
  List<dynamic>? comments;
  String? createdAt;
  String? updatedAt;
  num? v;
  bool? isDeleted;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['groupId'] = groupId;
    map['postType'] = postType;
    map['content'] = content;
    map['media'] = media;
    if (likes != null) {
      map['likes'] = likes?.map((v) => v.toJson()).toList();
    }
    if (comments != null) {
      map['comments'] = comments?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    map['isDeleted'] = isDeleted;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }
}

class User {
  User({
    this.id,
    this.fullname,
    this.profile,
  });

  User.fromJson(dynamic json) {
    id = json['_id'];
    fullname = json['fullname'];
    profile = json['profile'];
  }

  String? id;
  String? fullname;
  String? profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['fullname'] = fullname;
    map['profile'] = profile;
    return map;
  }
}
