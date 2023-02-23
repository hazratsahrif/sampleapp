import 'dart:convert';

import 'package:get/get_connect/http/src/response/response.dart';

class ApiResponseResult {

  static const  loginInvalidInput = "Unauthorized";
  static String loginEmailNotVerified = jsonEncode({"err":true,"msg":"Email address not verified.","isAuthenticated":false});
  static String signUpUserAlreadyExist = jsonEncode({"err":true,"msg":"User already exists with this email"});
  static String invalidOTP = "Invalid OTP or OTP expired.";
  static String noAccountWithThisEmail = "No account with this email exists!";
  static String noUserWithThisEmail = jsonEncode({"err":true,"msg":"No user with this email exists"});

}