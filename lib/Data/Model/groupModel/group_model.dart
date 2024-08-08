
import '../groupListModel/group_list_model.dart';

/// success : true
/// message : "Group Create Successfully"
/// data : {"_id":"65df275af568daa1a87858cf","coverPictures":[{"picture":"https://rootroom.testdevlink.net/uploads/group-cover-pictures/1709123418583.JPG","_id":"65df275af568daa1a87858d0"}],"groupName":"Bible Studies second","userId":{"_id":"65c20a8021eea337e272214f","fullname":"Joshua Rozario","profile":"https://rootroom.testdevlink.net/uploads/profile-pic/1708543027915.png"},"privacy":"Private","description":"demo description for testing","createdAt":"2024-02-28T12:30:18.589Z","updatedAt":"2024-05-17T14:07:09.033Z","__v":0,"invites":[{"createdDate":"2024-05-14T16:04:42.961Z","_id":"6647648daeceb46d6fe7889e","user":{"_id":"66211683392132a9d9321189","fullname":"App Team","profile":"https://rootroom.testdevlink.net//uploads/profile-pic/1713444483363.png"}}],"members":[{"createdDate":"2024-03-04T18:42:33.220Z","_id":"65e616dfbbc45be1a83c2125","user":{"_id":"65e09fcb5d0ee0b0f2de27b7","fullname":"Rozario Joshua","profile":"https://rootroom.testdevlink.net/uploads/profile-pic/1709219786871.jpg"}}],"requests":[{"createdDate":"2024-03-25T03:28:39.340Z","_id":"6600f2266ed8942eff52be8c","user":{"_id":"6600f1076ed8942eff52be7d","fullname":"jackie","profile":"https://rootroom.testdevlink.net/uploads/profile-pic/1711337735647.png"}}]}

class GroupModel {
  GroupModel({
      this.success, 
      this.message, 
      this.group,});

  GroupModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    group = json['data'] != null ? Group.fromJson(json['data']) : null;
  }
  bool? success;
  String? message;
  Group? group;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (group != null) {
      map['data'] = group?.toJson();
    }
    return map;
  }

}
