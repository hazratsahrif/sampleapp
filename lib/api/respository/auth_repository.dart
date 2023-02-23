
import 'package:sampleapp/api/data/network/BaseApiServices.dart';
import 'package:sampleapp/api/data/network/NetworkApiService.dart';
import 'package:sampleapp/constant/api_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  /// SignUP Api Call
  Future<dynamic> signUpUser(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.postSignUpApiResponse(data, ApiUrl.signUpEndPoint);
      return response;
    } catch (e) {
      throw e;
    }
  }

  /// Login Api Call
  Future<dynamic> loginUser(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.postLoginApiResponse(data, ApiUrl.loginEndPoint);
      return response;
    } catch (e) {
      throw e;
    }
  }

  /// Get All Books
  Future<dynamic> getAllTradingResult(dynamic data) async {
    try {
      dynamic response = await _apiServices.getAllTradingApiResponse(
          ApiUrl.tradingEndPoint,data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  /// Get All Deposit
  Future<dynamic> getAllDepositResult(dynamic data) async {
    try {
      dynamic response = await _apiServices.getAllDepositApiResponse(
          ApiUrl.getDepositEndPoint,data);
      return response;
    } catch (e) {
      throw e;
    }
  }


  /// Get All Deposit
  Future<dynamic> getWithDarwResult(dynamic data) async {
    try {
      dynamic response = await _apiServices.getAllDepositApiResponse(
          ApiUrl.getWithEndPoint,data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  /// Get User Portfolio Deposit
  Future<dynamic> getUserPortfolioResult(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPortfolioApiResponse(
          ApiUrl.getPortfolioEndPoint,data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
