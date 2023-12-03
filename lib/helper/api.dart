import 'dart:convert';

import 'package:http/http.dart' as http;


//@required  for 
import 'package:flutter/foundation.dart';

class Api {
  //get reguest
  Future<dynamic> get({required String uri,@required String? token}) async {
    Map<String, String> headers = {};
   // headers = {'Content-Type': 'application/x-www-form-urlencoded'};
   if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(uri),
    headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem whith status code ${response.statusCode},with  ${jsonDecode(response.body)}');
    }
  }

  Future<Map<String, dynamic>> post({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    /** 
     * Authentication Token:
In the context of authentication, a token is often used to represent
 a user's authentication state. For example, when a user logs in, 
 the server may issue an authentication token that is then used to
  authenticate subsequent requests. This token is typically sent with 
  each request to prove that the user is authenticated. Common types of 
  authentication tokens include JSON Web Tokens (JWT) or OAuth tokens.
  ---------------------------------------------------
  When a user logs in and an authentication token is issued, that token 
  is often designed to be unique to that specific user. It serves as 
  a digital identifier for the authenticated user. This uniqueness 
  is crucial for security and proper identification purposes.
     */
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem in statusCode ${response.statusCode} with  ${jsonDecode(response.body)} ');
    }
  }

  Future<Map<String, dynamic>> put({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem in statusCode ${response.statusCode} with  ${jsonDecode(response.body)} ');
    }
  }
}
/*
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    print('url = $url body = $body token = $token ');
    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}*/
