class GroupListModel {
  GroupListModel({
    this.success,
    this.message,
    this.groups,
  });

  GroupListModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      groups = [];
      json['data'].forEach((i) {
        groups?.add(Group.fromJson(i));
      });
    }
  }

  bool? success;
  String? message;
  List<Group>? groups;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (groups != null) {
      map['data'] = groups?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Group {
  Group({
    this.id,
    this.coverPictures,
    this.groupName,
    this.userId,
    this.privacy,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.invites,
    this.members,
    this.requests,
  });

  Group.fromJson(dynamic json) {
    id = json['_id'];
    if (json['coverPictures'] != null) {
      coverPictures = [];
      json['coverPictures'].forEach((v) {
        coverPictures?.add(CoverPictures.fromJson(v));
      });
    }
    groupName = json['groupName'];
    userId = json['userId'] != null ? User.fromJson(json['userId']) : null;
    privacy = json['privacy'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    if (json['invites'] != null) {
      invites = [];
      json['invites'].forEach((v) {
        invites?.add(Invites.fromJson(v));
      });
    }
    if (json['members'] != null) {
      members = [];
      json['members'].forEach((v) {
        members?.add(Members.fromJson(v));
      });
    }
    if (json['requests'] != null) {
      requests = [];
      json['requests'].forEach((v) {
        requests?.add(Requests.fromJson(v));
      });
    }
  }

  String? id;
  List<CoverPictures>? coverPictures;
  String? groupName;
  User? userId;
  String? privacy;
  String? description;
  String? createdAt;
  String? updatedAt;
  num? v;
  List<dynamic>? invites;
  List<Members>? members;
  List<Requests>? requests;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    if (coverPictures != null) {
      map['coverPictures'] = coverPictures?.map((v) => v.toJson()).toList();
    }
    map['groupName'] = groupName;
    if (userId != null) {
      map['userId'] = userId?.toJson();
    }
    map['privacy'] = privacy;
    map['description'] = description;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    if (invites != null) {
      map['invites'] = invites?.map((v) => v.toJson()).toList();
    }
    if (members != null) {
      map['members'] = members?.map((v) => v.toJson()).toList();
    }
    if (requests != null) {
      map['requests'] = requests?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Requests {
  Requests({
    this.createdDate,
    this.id,
    this.user,
  });

  Requests.fromJson(dynamic json) {
    createdDate = json['createdDate'];
    id = json['_id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? createdDate;
  String? id;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdDate'] = createdDate;
    map['_id'] = id;
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

class Members {
  Members({
    this.createdDate,
    this.id,
    this.user,
  });

  Members.fromJson(dynamic json) {
    createdDate = json['createdDate'];
    id = json['_id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? createdDate;
  String? id;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdDate'] = createdDate;
    map['_id'] = id;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }
}

class CoverPictures {
  CoverPictures({
    this.picture,
    this.id,
  });

  CoverPictures.fromJson(dynamic json) {
    picture = json['picture'];
    id = json['_id'];
  }

  String? picture;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['picture'] = picture;
    map['_id'] = id;
    return map;
  }
}

class Invites {
  Invites({
    this.createdDate,
    this.id,
    this.user,
  });

  Invites.fromJson(dynamic json) {
    createdDate = json['createdDate'];
    id = json['_id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? createdDate;
  String? id;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdDate'] = createdDate;
    map['_id'] = id;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }
}
