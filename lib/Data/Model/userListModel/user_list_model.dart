import '../../../Data/Model/authModel/sign_in_model.dart' as signInModel;

class UserListModel {
  UserListModel({
    this.success,
    this.message,
    this.users,
  });

  UserListModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      users = [];
      json['data'].forEach((v) {
        users?.add(signInModel.User.fromJson(v));
      });
    }
  }

  bool? success;
  String? message;
  List<signInModel.User>? users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (users != null) {
      map['data'] = users?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
