class ApiEndPointUrls {
  ApiEndPointUrls._();

  static const signUp = "auth/register";
  static const signIn = "auth/login";

  ///Groups
  static const myGroup = "user/myGroups";
  static const forgotPassword = "user/forgetpassword";
  static const verifyCode = "user/verifycode";
  static const confirmPassword = "user/confirmpassword/";

//Master
  static const languages = "master/getLanguages";
  static const interests = "master/getInterests";
  static const suggestedGroup = "group/getSuggestedGroups";
  static const joinedGroup = "group/getJoinedGroups";
  static const completeProfile = "user/completeProfile";
  static const getAllUsers = "master/getAllUsers";
  static const createGroup = "group/createGroup";
  static const getGroupPosts = "post/getPosts/";
  static const inviteUser = "group/inviteUser";
  static const updateProfile = "user/updateUserProfile";
}
