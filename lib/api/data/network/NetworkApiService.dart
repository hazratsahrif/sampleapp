import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:sampleapp/api/data/app_excaptions.dart';
import 'package:sampleapp/api/data/network/BaseApiServices.dart';
import 'package:sampleapp/api/model/LoginResponse.dart';
import 'package:sampleapp/api/model/RegistrationResponse.dart';
import 'package:sampleapp/utils/easy_loading.dart';
import 'package:http/http.dart' as http;


class NetworkApiService extends BaseApiServices {
  // final token = GetStorage();

  var dio = Dio();

  // final http = InterceptedHttp.build(interceptors: [
  //   LoggingInterceptor(),
  // ]);
  /// Sign Up Api call
  @override
  Future postSignUpApiResponse(data, String url) async {
    // print(url);
    // var response;
    // try {
    //    response = await dio
    //       .post('https://dashboard.tradexone.com/api/register.php', data: data);
    //
    //   print(response);
    //
    // } on SocketException {
    //   throw FetchDataException('No Internet Connection');
    // }
    // return response;
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 10),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }


    return response.body;
  }

  /// Login Up Api call
  @override
  Future postLoginApiResponse(data, String url) async {
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 10),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return response.body;
  }

  @override
  Future getAllBooksApiResponse(String url, int limit, int pages) {
    // TODO: implement getAllBooksApiResponse
    throw UnimplementedError();
  }

  @override
  Future getAllTradingApiResponse(String url, dynamic data) async {
    print("network api call");
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 20),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return response.body;
  }

 /// Deposit Statement Get Api
  @override
  Future getAllDepositApiResponse(String url, dynamic data) async {
    print("network api call");
    print(data.toString());
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 20),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return response.body;
  }

  @override
  Future getwithdrawApiResponse(String url, data) async{
    print("network api call");
    print(data.toString());
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 20),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return response.body;

  }

  @override
  Future getPortfolioApiResponse(String url, data) async{
    print("network api call");
    print(data.toString());
    dynamic response;
    try {
      response = await http.post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 20),
      );
      print(response.body);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return response.body;
  }
}
