

import 'package:sampleapp/constant/api_response.dart';

class AppException implements Exception {

  final _message ;
  final _prefix ;
  AppException([this._message , this._prefix]);

  String toString(){
    return '$_prefix$_message' ;
  }

}


class FetchDataException extends AppException {

  FetchDataException([String? message]) : super(message, 'Error During Communication');
}


class BadRequestException extends AppException {

  BadRequestException([String? message]) : super(message, 'Invalid request');
}


class InvalidInputException extends AppException {

  InvalidInputException([String? message]) : super(message, ApiResponseResult.loginInvalidInput);
}


class UnauthorisedException  extends AppException {

  UnauthorisedException([String? message]) : super(message, ApiResponseResult.loginEmailNotVerified);
}


class UserAlreadyExit extends AppException {

  UserAlreadyExit([String? message]) : super(message, ApiResponseResult.signUpUserAlreadyExist);
}

class SignUpUserAlreadyExit extends AppException {

  SignUpUserAlreadyExit([String? message]) : super(message, 'User exists');
}

class InvalidOTPException extends AppException {

  InvalidOTPException([String? message]) : super(message, ApiResponseResult.invalidOTP);
}

class NoAccountExitsException extends AppException {

  NoAccountExitsException([String? message]) : super(message, ApiResponseResult.noAccountWithThisEmail);
}