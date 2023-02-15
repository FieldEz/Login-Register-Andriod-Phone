import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

class ApiProvider {
  ApiProvider();

  var endpoint = "http://13.215.140.97:3000";
  Future<http.Response> doLogin(String username, String password) async {
    String uri = '$endpoint/login';
    var body = {"username": username, "password": password};
    return http.post(Uri.parse(uri), body: body);
  }

  Future<http.Response> doRegister(
      String username, String password, String fullname, String email) async {
    String uri = '$endpoint/register';
    var body = {
      "username": username,
      "password": password,
      "fullname": fullname,
      "email": email
    };
    return http.post(Uri.parse(uri), body: body);
  }
}
