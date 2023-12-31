import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nusantara/auth/auth.dart';
import 'package:nusantara/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninController extends GetxController {
  var isPasswordVisible = false.obs;
  var emailController = TextEditingController();
  var passwordConfirmController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
      var dio = Dio();
      dio.options.headers['Content-Type'] = 'application/json';

      final url =
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail;
      Map<String, dynamic> body = {
        'email': emailController.text.trim(),
        'passwordconfirm': passwordConfirmController.text,
      };

      var response = await dio.post(url, data: jsonEncode(body));

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = response.data;
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          (token);
          final SharedPreferences prefs = await _prefs;

          await prefs.setString('token', token);
          emailController.clear();
          Get.off(const SigninView());
        } else {
          throw json["message"] ?? "Unknown Error Occurred";
        }
      } else {
        throw response.data["Message"] ?? "Unknown Error Occurred";
      }
    } catch (e) {
      Get.back();
      showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Error'),
            contentPadding: const EdgeInsets.all(20),
            children: [Text(e.toString())],
          );
        },
      );
    }
  }
}
