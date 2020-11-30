class Auth {
  String email;
  String password;
  String deviceName;

  Auth({this.email, this.password, this.deviceName});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
   // data['device_name'] = this.deviceName;
    return data;
  }
}