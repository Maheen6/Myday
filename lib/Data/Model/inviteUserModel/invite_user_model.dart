/// success : true
/// message : "Invite Sent Successfully"
/// data : []

class InviteUserModel {
  InviteUserModel({
    this.success,
    this.message,
    // this.data,
  });

  InviteUserModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    // if (json['data'] != null) {
    //   data = [];
    //   json['data'].forEach((v) {
    //     data?.add(Dynamic.fromJson(v));
    //   });
    // }
  }

  bool? success;
  String? message;
  // List<dynamic>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    // if (data != null) {
    //   map['data'] = data?.map((v) => v.toJson()).toList();
    // }
    return map;
  }
}
