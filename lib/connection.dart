import 'dart:convert';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'Models/userModel.dart';

class AuthService {
  Dio dio = new Dio();

  createUser(
      String name, String seatNo, String year, String sec, String shift) async {
    try {
      final response = await dio.post('http://localhost:3000/addUser', data: {
        "name": name,
        "seatNo": seatNo,
        "year": year,
        "sec": sec,
        "shift": shift
      });
      debugPrint(response.toString());
    } on DioError catch (e) {
      print(e.response?.statusCode.toString());
    }
  }

  // return body.map<User>(User.fromJson(body)).toList();
  // print(response.body);
  // List body = jsonDecode(response.body);
  // List players = body.map((element) {
  //   return User.fromJson(element);
  // }).toList();
  // print(players[0]);
  // return players;
//   return await dio.post('http://localhost:3000/addUser',
  //       data: {
  //         "name": name,
  //         "seatNo": seatNo,
  //         "year": year,
  //         "sec": sec,
  //         "shift": shift
  //       },
  //       //  onSendProgress: (int sent, int total) {
  //       //   print('$sent $total');
  //       //},
  //       options: Options(contentType: Headers.formUrlEncodedContentType));
  // }
  //  on DioError catch (e) {
  //   Fluttertoast.showToast(
  //       msg: e.response!.data['msg'],
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       backgroundColor: Colors.grey,
  //       textColor: Colors.black,
  //       fontSize: 16.0);
  // }
}
