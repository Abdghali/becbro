import 'dart:convert';
import 'dart:io';
import 'package:becbro/models/Apis.dart';
import 'package:becbro/models/Auth.dart';
import 'package:becbro/models/User.dart';
import 'package:becbro/models/api_response.dart';
import 'package:http/http.dart' as http;

class LoginServices {

  /// to Auth user by email and password
  Future<APIResponse<User>> AuthUserByEmailAndPasswrd(Auth item) async {
    Apis api = new Apis();
    var url =  api.URI + api.login;
    var body = jsonEncode(item.toJson());
    return await http
        .post(url, headers: api.defaultHeaders, body: body)
        .then((http.Response response) {
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("login successfully  ---------------------------------------------------------------------");
        final jasonData = json.decode(response.body);
        User _user = User.fromJson(jasonData);
        return APIResponse<User>(data:_user);
      }
      return APIResponse<User>(error: true ,errorMessage: 'an error accrued 1 ${response.statusCode} ');

    }).catchError((e)=> APIResponse<User>(error: true ,errorMessage: 'an error accrued 2 '+e.toString() ));
  }



}