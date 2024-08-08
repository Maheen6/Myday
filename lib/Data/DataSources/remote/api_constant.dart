import 'package:get_storage/get_storage.dart';

import '../../../Helpers/get_storare_helper.dart';
import '../../Model/authModel/sign_in_model.dart';


class ApiConstants {
  ApiConstants._();

  static const mainUrl = "https://rootroom.testdevlink.net/api/";
  // static const mainUrl = "http://172.16.24.66:8080/api/";
  // static const mainUrl = "https://flutterapi.testdevlink.net/lug-traveler-db/api/";
  static var publishKey = "";
  static var secretKey = "";
  static final storage = GetStorage();
  static  User? userData = getUser();
  static var travelPostId = 0;
}
