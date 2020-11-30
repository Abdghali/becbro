class User {
  int statusCode;
  String message;
  UserData data;

  User({this.statusCode, this.message, this.data});

  User.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'] != null ? new UserData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class UserData {
  bool authenticated;
  int userId;
  String mobile;
  String username;
  String email;
  String accountType;
  bool isActiveAccount;
  String token;

  UserData(
      {this.authenticated,
        this.userId,
        this.mobile,
        this.username,
        this.email,
        this.accountType,
        this.isActiveAccount,
        this.token});

  UserData.fromJson(Map<String, dynamic> json) {
    authenticated = json['authenticated'];
    userId = json['userId'];
    mobile = json['mobile'];
    username = json['username'];
    email = json['email'];
    accountType = json['accountType'];
    isActiveAccount = json['isActiveAccount'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authenticated'] = this.authenticated;
    data['userId'] = this.userId;
    data['mobile'] = this.mobile;
    data['username'] = this.username;
    data['email'] = this.email;
    data['accountType'] = this.accountType;
    data['isActiveAccount'] = this.isActiveAccount;
    data['token'] = this.token;
    return data;
  }
}
